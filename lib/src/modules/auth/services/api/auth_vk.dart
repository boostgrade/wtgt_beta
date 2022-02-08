import 'package:flutter_login_vk/flutter_login_vk.dart';

class AuthVK {
  final vk = VKLogin();

  VKAccessToken? _vkToken;
  VKUserProfile? _vkProfile;
  String? _vkEmail;
  bool _vkSdkInitialized = false;

  Future<void> initVK() async {
    await vk.initSdk();
    _vkSdkInitialized = true;
  }

  Future<void> onPressVk() async {
    final result = await vk.logIn(scope: [
      VKScope.email,
    ]);
  }

  Future<void> vkLogOut() async {
    await vk.logOut();
  }
}
