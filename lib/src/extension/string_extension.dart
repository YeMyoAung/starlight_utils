part of starlight_utils;

const String _emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
const String _upperAZ = r'[A-Z]';
const String _lowerAZ = r'[a-z]';
const String _numberFilter = r'[0-9]';
const String _specialFilter = r'[!@#$%^&*(),.?":{}|<>]';

///For String
extension StarlightString on String {
  ///To compare or validate two [String]
  String get toValidate => toLowerCase().replaceAll(' ', '');

  ///To remove white space ` `
  String get withoutWhiteSpace => replaceAll(' ', '');

  ///To Check `Email`
  bool get isEmail => RegExp(_emailPattern).hasMatch(this);

  /// To Check Password
  /// eg.
  /// - if user set `password1`,
  ///  return data will `Password must be at least 1 upper case`
  /// - if user set `PASSWORD1`,
  ///  return data will `Password must be at least 1 lower case`
  /// - if user set `Password`,
  ///  return data will `Password must be at least 1 digit`
  /// - if user set `Password1`,
  ///  return data will `Password must be at least 1 special char`
  /// - if user set `Prd1@`,
  ///  return data will `Password must be at least 8 chars.`
  /// - if user set `anbA@#019`
  ///  return data will be `null`
  String? get isStrongPassword {
    if (!RegExp(_upperAZ).hasMatch(this)) {
      return 'Password must be at least 1 upper case';
    }
    if (!RegExp(_lowerAZ).hasMatch(this)) {
      return 'Password must be at least 1 lower case';
    }
    if (!RegExp(_numberFilter).hasMatch(this)) {
      return 'Password must be at least 1 digit';
    }
    if (!RegExp(_specialFilter).hasMatch(this)) {
      return 'Password must be at least 1 special char';
    }
    if (length < 8) {
      return 'Password must be at least 8 chars.';
    }
    return null;
  }
}
