import 'package:flutter/material.dart';
import 'package:flutter_login_vk/flutter_login_vk.dart';
import 'package:mobx/mobx.dart';

part 'auth_vk.g.dart';

enum ScreenState {
  content,
  loading,
  error,
}

class AuthVK = _AuthVK with _$AuthVK;

abstract class _AuthVK with Store {
  @observable
  ScreenState state = ScreenState.content;

  VKAccessToken? _vkToken;
  VKUserProfile? _vkProfile;
  String? _vkEmail;
  bool _vkSdkInitialized = false;

  @action
  Future<void> loginVK() async {
    final vk = VKLogin();

    await vk.initSdk(scope: [
      VKScope.email,
    ]);

    final loginResult = await vk.logIn();

    if (loginResult.isValue) {
      final result = loginResult.asValue!.value;

      if (!result.isCanceled) {
        _handleLogin(result);
      }
    }
  }

  Future<void> _handleLogin(VKLoginResult result) async {
    // ignore: avoid_print
    print('${result.accessToken}');
  }
}
