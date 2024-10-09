import 'package:flutter_example_nhuy/model/order_data_item_struct.dart';

List<OrderDataItemStruct>? removeOrderInList(
  List<OrderDataItemStruct>? oldOrderList,
  String? uuid,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  try {
    if (oldOrderList == null || uuid == null) {
      return oldOrderList;
    }

    // Create a new list by removing the order with the matching uuid
    oldOrderList.removeWhere((order) => order.uuid == uuid);

    return oldOrderList;
  } catch (e) {
    print('ERROR removeOrderFromList: ${e.toString()}');
    return oldOrderList;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
