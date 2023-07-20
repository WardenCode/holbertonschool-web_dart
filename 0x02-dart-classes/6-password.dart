class Password {
  late String _password;

  Password({required String password}) {
    this._password = password;
  }

  bool isValid() {
    int passwordLength = this._password.length;

    if (passwordLength < 8 || passwordLength > 16) return false;

    if (!this._password.contains(RegExp(r'[A-Z]'))) return false;

    if (!this._password.contains(RegExp(r'\d'))) return false;

    return true;
  }

  String get password {
    return this._password;
  }

  set password(String password) {
    this._password = password;
  }

  @override
  String toString() {
    return "Your Password is: ${this._password}";
  }
}
