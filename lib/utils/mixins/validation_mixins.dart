mixin ValidationMixin {
  bool isFieldEmpty(String? fieldValue) => fieldValue?.isEmpty ?? true;

  bool isDropDownEmpty(dynamic fieldValue) =>
      fieldValue == null || fieldValue.toString().isEmpty;

  bool validateEmailAddress(String? email) {
    if (email == null) {
      return false;
    }

    return !RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(email);
  }

  bool validatePassword(String? password) {
    if (password == null) {
      return false;
    }
    //* use this if u wan to validate a strong password
    // return !RegExp(r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$')
    //     .hasMatch(password);

    return false;
  }

  bool passwordNotMatch(String confirmPassword, String password) {
    if (confirmPassword != password) {
      return true;
    }
    return false;
  }
}
