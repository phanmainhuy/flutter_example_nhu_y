import 'dart:ffi';

class CountryImageOptionModelStruct {
  CountryImageOptionModelStruct({
    String? id,
    String? name,
    String? fullName,
    String? imagePath,
    bool? isSelected,
    bool? isDisplay,
    bool? isDisableSelected,
  })  : _id = id,
        _name = name,
        _fullName = fullName,
        _imagePath = imagePath,
        _isSelected = isSelected,
        _isDisableSelected = isDisableSelected,
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

  // "fullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

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

  bool? _isDisableSelected;
  bool get isDisableSelected => isDisableSelected ?? false;
  set isDisableSelected(bool? val) => _isDisableSelected = val;

  bool hasisDisableSelected() => _isDisableSelected != null;

  static CountryImageOptionModelStruct fromMap(Map<String, dynamic> data) =>
      CountryImageOptionModelStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        fullName: data['fullName'] as String?,
        imagePath: data['imagePath'] as String?,
        isSelected: data['isSelected'] as bool?,
        isDisplay: data['isDisplay'] as bool?,
        isDisableSelected: data['isDisableSelected'] as bool,
      );

  static CountryImageOptionModelStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? CountryImageOptionModelStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'fullName': _fullName,
        'imagePath': _imagePath,
        'isSelected': _isSelected,
        'isDisplay': _isDisplay,
        'isDisableSelected': _isDisableSelected,
      };

  @override
  String toString() => 'CountryImageOptionModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CountryImageOptionModelStruct &&
        id == other.id &&
        name == other.name &&
        fullName == other.fullName &&
        imagePath == other.imagePath &&
        isSelected == other.isSelected &&
        isDisableSelected == other.isDisableSelected &&
        isDisplay == other.isDisplay;
  }
}
