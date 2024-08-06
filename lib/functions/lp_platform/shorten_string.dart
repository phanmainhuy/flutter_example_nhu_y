void main() {
  String input =
      'ewogInR4X2hhc2giOiAiZjY0ODM0NGEwNGMxNDIwNTU5MDBkZTdkOTVhMjNiNjU0MDI4OTJjOGUxYWRlMjU4ZjZmNjc1NTU2NGRiYWI1NCIKfQ==';

  dynamic result = shortenString(input, 20);

  print(result);
}

String? shortenString(
  String? input,
  int? maxlength,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (input == null || input == '') {
    return '';
  }
  if (maxlength == null || maxlength <= 0) {
    return input;
  }

  if (input.length <= maxlength) {
    return input;
  }
  return input.substring(0, maxlength) + '...';

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
