import 'dart:convert';

String? parseBase64Txn(String? input) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (input == null || input == '') {
    return '';
  } else {
    try {
      Codec<String, String> stringToBase64 = utf8.fuse(base64);
      String decoded = stringToBase64.decode(input);
      if (decoded.contains('tx_hash')) {
        // parse json
        dynamic jsonDecode = json.decode(decoded);
        return jsonDecode['tx_hash'];
      } else {
        return decoded;
      }
    } catch (e) {
      return '';
    }
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
