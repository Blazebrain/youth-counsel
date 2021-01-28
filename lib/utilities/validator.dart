enum whatTextfield { username, email, password, passwordConfirm }
mixin validator {
  String validate(whatTextfield field, String value, [String password]) {
    switch (field) {
      case whatTextfield.username:
        if (value.isEmpty)
          return 'field is empty';
        else if (value.length < 3)
          return 'insert at least ${3 - value.length} characters';
        else
          return null;
        break;
      case whatTextfield.email:
        if (value.isEmpty)
          return 'field is empty';
        else if (!value.contains('@'))
          return 'not a valid email';
        else
          return null;
        break;
      case whatTextfield.password:
        if (value.isEmpty)
          return 'field is empty';
        else if (value.length < 3)
          return 'insert at least ${3 - value.length} characters';
        else
          return null;
        break;
      case whatTextfield.passwordConfirm:
        if (value.isEmpty)
          return 'field is empty';
        else if (password != value)
          return 'password doesn\'t match';
        else
          return null;
        break;
      default:
        return null;
    }
  }
}
