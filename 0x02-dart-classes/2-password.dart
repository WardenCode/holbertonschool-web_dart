class Password {
  String password = "";

  bool isValid() {
    int passwordLength = this.password.length;

    if (passwordLength < 8 || passwordLength > 16) return false;

    if (!this.password.contains(RegExp(r'[A-Z]'))) return false;

    if (!this.password.contains(RegExp(r'\d'))) return false;

    return true;
  }

  @override
  String toString() {
    return "Your Password is: ${this.password}";
  }
}
