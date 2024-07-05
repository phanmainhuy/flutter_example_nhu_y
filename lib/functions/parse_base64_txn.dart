import 'dart:convert';

void main() {
  String input =
      'ewogInR4X2hhc2giOiAiZjY0ODM0NGEwNGMxNDIwNTU5MDBkZTdkOTVhMjNiNjU0MDI4OTJjOGUxYWRlMjU4ZjZmNjc1NTU2NGRiYWI1NCIKfQ==';

  dynamic result = parseBase64Txn(input);

  print(result);
}

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
