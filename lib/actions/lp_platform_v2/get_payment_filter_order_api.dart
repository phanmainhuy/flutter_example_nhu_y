import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> getPaymentFilterOrderAPI(String pair, String lpToken,
    String lpUuid, String fromDate, int orderType) async {
  String urlAPI = 'https://lp.alphvlabs.com/lp_payment/orders';
  // Create the headers with the Bearer token
  final headers = {
    'Authorization': 'Bearer $lpToken',
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  try {
    String url =
        '$urlAPI?option=true&sort_order=DESC&page=1&limit=25&order_type=$orderType&pair=$pair&lp_id=$lpUuid&from_date=$fromDate&order_status=2&order_status=3&order_status=4&order_status=5&order_status=6';

    final uri = Uri.parse(url);

    final response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      dynamic jsonData = json.decode(response.body);
      // debugPrint('response: ');
      // debugPrint('StatusCode: ${response.statusCode}');
      // debugPrint(jsonData.toString());
      // return OrderDataItemStruct.fromMap(jsonData);
      return jsonData;
    } else {
      print('ERROR getPaymentFilterOrderAPI:');
      print('statusCode: ${response.statusCode.toString()}');
      print('Body: ${response.body.toString()}');
      return [];
    }
  } catch (e) {
    print('ERROR getPaymentFilterOrderAPI: ${e.toString()}');
    return [];
  }
}
