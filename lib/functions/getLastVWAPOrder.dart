double getLastVWAPOrder(
  dynamic data,
  String uuid,
  double lastVWAP,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  // double result = 0;
  try {
    List<dynamic> filteredList = (data['data'] as List)
        .where((item) => item['status'] == "SUCCESS")
        .toList();

    // uuid = filteredList

    List<dynamic> datafirst =
        (data['data'] as List).where((item) => item['uuid'] == uuid).toList();

    int lengthList = filteredList.length;

    // print('lengthList: $lengthList');
    // print('lastVWAP: $lastVWAP');
    // print('uuid: $uuid');
    if (lengthList == 0) {
      return lastVWAP;
    }

    // print(datafirst[0]);

    // if (lengthList > 0) {
    //   List<double> arrayVwap =
    //       filteredList.map((item) => item['vwap'] as double).toList();
    //   if (index > 0 && index <= lengthList) {
    //     result = arrayVwap[index - 1];
    //   } else if (index == 0) {
    //     arrayVwap = [lengthList - 1];
    //   } else if (index > lengthList) {
    //     result = arrayVwap[lengthList - 1];
    //   }
    //   print(arrayVwap);
    //   print(index);
    // }
    // print(result);

    for (int i = 0; i < lengthList; i++) {
      if (int.parse(filteredList[i]['timestamp']) <
          int.parse(datafirst[0]['timestamp'])) {
        // print(filteredList[i]['vwap']);
        return filteredList[i]['vwap'];
      }
    }
    return 0;
  } catch (e) {
    print(e);
    return 0;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
