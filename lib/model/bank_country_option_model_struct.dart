class BankCountryOptionModelStruct {
  BankCountryOptionModelStruct({
    String? id,
    String? name,
    String? imagePath,
    String? isSelected,
    String? isDisplay,
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
  String? _isSelected;
  String get isSelected => _isSelected ?? '';
  set isSelected(String? val) => _isSelected = val;

  bool hasIsSelected() => _isSelected != null;

  // "isDisplay" field.
  String? _isDisplay;
  String get isDisplay => _isDisplay ?? '';
  set isDisplay(String? val) => _isDisplay = val;

  bool hasisDisplay() => _isDisplay != null;

  static BankCountryOptionModelStruct fromMap(Map<String, dynamic> data) =>
      BankCountryOptionModelStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        imagePath: data['imagePath'] as String?,
        isSelected: data['isSelected'] as String?,
        isDisplay: data['isDisplay'] as String?,
      );

  static BankCountryOptionModelStruct? maybeFromMap(dynamic data) => data is Map
      ? BankCountryOptionModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'imagePath': _imagePath,
        'isSelected': _isSelected,
        'isDisplay': _isDisplay,
      };

  @override
  String toString() => 'BankCountryOptionModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BankCountryOptionModelStruct &&
        id == other.id &&
        name == other.name &&
        imagePath == other.imagePath &&
        isSelected == other.isSelected &&
        isDisplay == other.isDisplay;
  }
}
