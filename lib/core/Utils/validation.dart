class EmailValidator {
  static const String _emailPattern = r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9.-]+$';

  static bool isValid(String email) {
    RegExp regex = RegExp(_emailPattern);
    return regex.hasMatch(email);
  }
}

class PasswordValidator {
  static const String _passwordPattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

  static bool isValid(String password) {
    RegExp regex = RegExp(_passwordPattern);
    return regex.hasMatch(password);
  }
}
