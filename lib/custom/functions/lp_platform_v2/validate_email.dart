String? validateEmail(String? email) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (email == null || email == '') {
    return 'Field is required';
  }

  // Check if there is a space at the beginning of the string
  if (email.startsWith(' ')) {
    return 'Invalid input';
  }

  // Regular expression for validating an email address
  final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  // Check if the email is valid
  if (!emailRegex.hasMatch(email)) {
    return 'Has to be a valid email address';
  }

  // Return null if the email is valid
  return '';

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
