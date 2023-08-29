import 'package:easy_localization/easy_localization.dart';

import 'locale_keys.dart';

class Validate {
  static final RegExp _email = RegExp(
    r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$',
  );

  static final RegExp _password = RegExp(
    r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$",
  );

  static emailValidate(String email) {
    if(email == '') {
      return LocaleKeys.cantBlank.tr();
    }

    return _email.hasMatch(email) ? null : LocaleKeys.emailNotValid.tr();
  }

  static passwordValidate(String pass) {
    if(pass == '') {
      return LocaleKeys.cantBlank.tr();
    }

    return _password.hasMatch(pass) ? null : LocaleKeys.passwordNotValid.tr();
  }

}
