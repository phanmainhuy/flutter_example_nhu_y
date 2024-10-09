class PairImageOptionModelStruct {
  PairImageOptionModelStruct({
    String? id,
    String? label,
    String? imagePath,
    bool? isSelected,
    bool? enable,
  })  : _id = id,
        _label = label,
        _imagePath = imagePath,
        _isSelected = isSelected,
        _enable = enable;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;

  bool hasLabel() => _label != null;

  // "imagePath" field.
  String? _imagePath;
  String get imagePath => _imagePath ?? '';
  set imagePath(String? val) => _imagePath = val;

  bool hasImagePath() => _imagePath != null;

  // "isSelected" field.
  bool? _isSelected;
  bool get isSelected => _isSelected ?? false;
  set isSelected(bool? val) => _isSelected = val;

  bool hasIsSelected() => _isSelected != null;

  // "enable" field.
  bool? _enable;
  bool get enable => _enable ?? false;
  set enable(bool? val) => _enable = val;

  bool hasEnable() => _enable != null;

  static PairImageOptionModelStruct fromMap(Map<String, dynamic> data) =>
      PairImageOptionModelStruct(
        id: data['id'] as String?,
        label: data['label'] as String?,
        imagePath: data['imagePath'] as String?,
        isSelected: data['isSelected'] as bool?,
        enable: data['enable'] as bool?,
      );

  static PairImageOptionModelStruct? maybeFromMap(dynamic data) => data is Map
      ? PairImageOptionModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'label': _label,
        'imagePath': _imagePath,
        'isSelected': _isSelected,
        'enable': _enable,
      };

  @override
  String toString() => 'PairImageOptionModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PairImageOptionModelStruct &&
        id == other.id &&
        label == other.label &&
        imagePath == other.imagePath &&
        isSelected == other.isSelected &&
        enable == other.enable;
  }
}
