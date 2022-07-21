class Validators {
  static String? validateEmail(String value) {
    Pattern pattern = r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
    RegExp regex = RegExp(pattern as String);
    if (!regex.hasMatch(value)) {
      return 'Please enter a valid email address.';
    } else {
      return null;
    }
  }

  static String? validatePassword(String value) {
    Pattern pattern = r'^.{8,}$';
    RegExp regex = RegExp(pattern as String);
    if (!regex.hasMatch(value)) {
      return 'Password must be at least 8 characters.';
    } else {
      return null;
    }
  }

  static String? validateName(String value) {
    Pattern pattern = r"^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$";
    RegExp regex = RegExp(pattern as String);
    if (!regex.hasMatch(value)) {
      return 'Please enter a name.';
    } else {
      return null;
    }
  }

  static String? validateNumber(String value) {
    Pattern pattern = r'^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$';
    RegExp regex = RegExp(pattern as String);
    if (!regex.hasMatch(value)) {
      return 'Please enter a number.';
    } else {
      return null;
    }
  }

  static String? validatePhoneNumber(String value) {
    if (value.length < 13 || value.length > 13 || value.isEmpty) {
      return "Please Enter a Valid Number.";
    }
    return null;
  }

  static String? timeValidator(String value) {
    if (value.isEmpty) {
      return 'Time Slot Must be Filled';
    }
    return null;
  }
}
