String? nameValidator(String? value) {
  var regx = RegExp(r'^[A-Za-z ]+$');
  if (value == null || value.isEmpty) {
    return 'Please enter your name';
  } else if (!regx.hasMatch(value)) {
    return 'Please enter valid name [First Second Last]';
  }
  return null;
}

String? emailValidator(String? value) {
  var regx = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  if (value == null || value.isEmpty) {
    return 'Please enter your email';
  } else if (!regx.hasMatch(value)) {
    return 'Please enter valid email';
  }
  return null;
}

String? subjectValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your subject';
  }
  return null;
}

String? messageValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your message';
  }
  return null;
}
