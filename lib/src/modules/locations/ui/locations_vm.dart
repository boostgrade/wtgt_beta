import 'package:geolocator/geolocator.dart';
import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/ui/messages/types/common_snackbar.dart';
part 'locations_vm.g.dart';

class LocationsVM = _LocationsVM with _$LocationsVM;

abstract class _LocationsVM with Store {
  /// Проверка на включение сервиса геолокации
  Future<bool> checkGeoServiceEnable() async {
    final bool _serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!_serviceEnabled) {
      CommonSnackBar('Сервис геолокации выключен');
    }

    return _serviceEnabled;
  }

  /// Получение текущей позиции
  @action
  Future<Position> gettingCurrentPosition() async {
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }

  /// Получение полседней известной позиции если была доступна
  @action
  Future<Position?> gettingLastPosition() async {
    return await Geolocator.getLastKnownPosition();
  }

  /// Определение позиии
  @action
  Future<Position> _determinePosition() async {
    bool _checkAvalibility = await checkGeoServiceEnable();
    LocationPermission permission;

    if (_checkAvalibility) {
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          CommonSnackBar('Сервис геолокации запрещен');

          return Future.error('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        CommonSnackBar(
          'Сервис геолокации полностью запрещен, невозможно запросить разрешения',
        );

        return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.',
        );
      }
    }

    return Geolocator.getCurrentPosition();
  }
}
