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
  return '${input.substring(0, maxlength)}...';

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
