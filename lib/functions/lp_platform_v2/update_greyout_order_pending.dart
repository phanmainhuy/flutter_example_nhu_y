import 'package:flutter_example_nhuy/model/order_data_item_struct.dart';

List<OrderDataItemStruct>? updateGreyoutOrderPending(
  List<OrderDataItemStruct>? listOrder,
  String? uuidGreyout,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  try {
    if (listOrder == null || uuidGreyout == null) {
      return listOrder;
    }
    List<OrderDataItemStruct> updatedList = listOrder.map((order) {
      // Check if the current order's uuid matches the input uuid
      if (order.uuid == uuidGreyout) {
        // Return the updated order if uuid matches
        order.isDisable = true;
        return order;
      }
      // Return the original order if no match is found
      return order;
    }).toList();

    return updatedList;
  } catch (e) {
    print('ERROR updateGreyoutOrderPending: ${e.toString()}');
    return listOrder;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
