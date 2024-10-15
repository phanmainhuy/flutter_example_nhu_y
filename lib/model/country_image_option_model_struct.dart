class CountryImageOptionModelStruct {
  CountryImageOptionModelStruct({
    String? id,
    String? name,
    String? imagePath,
    bool? isSelected,
    bool? isDisplay,
  })  : _id = id,
        _name = name,
        _imagePath = imagePath,
        _isSelected = isSelected,
        _isDisplay = isDisplay;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasname() => _name != null;

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

  // "isDisplay" field.
  bool? _isDisplay;
  bool get isDisplay => _isDisplay ?? false;
  set isDisplay(bool? val) => _isDisplay = val;

  bool hasisDisplay() => _isDisplay != null;

  static CountryImageOptionModelStruct fromMap(Map<String, dynamic> data) =>
      CountryImageOptionModelStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        imagePath: data['imagePath'] as String?,
        isSelected: data['isSelected'] as bool?,
        isDisplay: data['isDisplay'] as bool?,
      );

  static CountryImageOptionModelStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? CountryImageOptionModelStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'imagePath': _imagePath,
        'isSelected': _isSelected,
        'isDisplay': _isDisplay,
      };

  @override
  String toString() => 'CountryImageOptionModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CountryImageOptionModelStruct &&
        id == other.id &&
        name == other.name &&
        imagePath == other.imagePath &&
        isSelected == other.isSelected &&
        isDisplay == other.isDisplay;
  }
}
