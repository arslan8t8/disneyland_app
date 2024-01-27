import 'package:disneyland_app/models/user_model/user_model.dart';
import 'package:flutter/material.dart';

class TokenStateParameters {
  ValueNotifier<String> token = ValueNotifier<String>('');
  ValueNotifier<UserModel?> user = ValueNotifier<UserModel?>(null);

  TokenStateParameters({required this.token, required this.user});
}

class TokenService extends ValueNotifier<TokenStateParameters> {
  TokenService._({required TokenStateParameters value}) : super(value);

  static TokenService? _instance;

  static TokenService get instance {
    _instance ??= TokenService._(
        value: TokenStateParameters(
            token: ValueNotifier<String>(''), user: ValueNotifier<UserModel?>(null)));
    return _instance!;
  }

  //setting global api token
  setApiTokenValue(String apitoken) {
    value.token.value = apitoken;
    notifyListeners();
  }

//setting global user
  setUserValue(UserModel currentuser) {
    value.user.value = currentuser;
    notifyListeners();
  }
}
