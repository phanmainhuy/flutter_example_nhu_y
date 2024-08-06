List<dynamic> handlePairList(
  List<dynamic> pairList,
  String? idSelected,
  bool isMultiOptions,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  /// pairList = [{"id": "1", "label": "VND_USDT", "imagePath": "yyfl86wq2cu9/6.vietnam-VND.png", "isSelected": true},...]
  // multi selection
  if (pairList == []) {
    return [];
  } else if (isMultiOptions) {
    return pairList;
  } else {
    try {
      List<dynamic> _pairList = pairList;
      // print('=====START======');
      // print('idSelected: $idSelected');

      for (int i = 0; i < _pairList.length; i++) {
        if (_pairList[i].isSelected == true && _pairList[i].id != idSelected) {
          _pairList[i].isSelected = false;
          // print('---_pairList[i] change true -> false ---\n $i ${_pairList[i]}');
        } else if (_pairList[i].id == idSelected) {
          _pairList[i].isSelected = true;
          // print('---_pairList[i] turn on true---\n $i ${_pairList[i]}');
        }
      }

      // print('=====END======');
      // print(_pairList);
      return _pairList;
    } catch (e) {
      print("ERROR handlePairList: ${e.toString()}");
      return pairList;
    }
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
