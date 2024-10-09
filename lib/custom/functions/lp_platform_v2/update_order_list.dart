

import 'package:flutter_example_nhuy/model/order_data_item_struct.dart';

List<OrderDataItemStruct>? updateOrderList(
  List<OrderDataItemStruct>? oldList,
  String? uuid,
  OrderDataItemStruct? orderUpdate,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  try {
    if (oldList == null || uuid == null || orderUpdate == null) {
      return oldList;
    }

    // Create a new list by mapping through the oldList
    List<OrderDataItemStruct> updatedList = oldList.map((order) {
      // Check if the current order's uuid matches the input uuid
      if (order.uuid == uuid) {
        // Return the updated order if uuid matches
        return orderUpdate;
      }
      // Return the original order if no match is found
      return order;
    }).toList();
    print('updateOrderList');
    print(updatedList.length);
    print('oldList: \n ${oldList.toString()}');
    print('updatedList: \n ${updatedList.toString()}');

    return updatedList;
  } catch (e) {
    print('ERROR updateOrderList: ${e.toString()}');
    return oldList;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}