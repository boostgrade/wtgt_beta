import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocationItem extends StatefulWidget {
  final String locationName;
  final String locationLat;
  final String locationLon;
  const LocationItem({
    Key? key,
    required this.locationName,
    required this.locationLat,
    required this.locationLon,
  }) : super(key: key);

  @override
  _LocationItemState createState() => _LocationItemState();
}

class _LocationItemState extends State<LocationItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: const Color.fromRGBO(235, 206, 12, 1),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              AppLocalizations.of(context)!.myLocations + widget.locationName,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'lat: ' + widget.locationLat,
                  ),
                  TextSpan(
                    text: 'lon: ' + widget.locationLon,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
