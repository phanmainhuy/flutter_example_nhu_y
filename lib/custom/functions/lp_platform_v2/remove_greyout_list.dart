import 'package:flutter_example_nhuy/model/order_data_item_struct.dart';

List<OrderDataItemStruct>? removeGreyoutOrderList(
    List<OrderDataItemStruct>? oldOrderList) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  try {
    if (oldOrderList == null || oldOrderList.isEmpty) {
      return oldOrderList;
    }

    oldOrderList.removeWhere((order) => order.isDisable == true);

    return oldOrderList;
  } catch (e) {
    print('ERROR removeGreyoutOrderList: ${e.toString()}');
    return oldOrderList;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
