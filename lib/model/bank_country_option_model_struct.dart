class BankCountryOptionModelStruct {
  BankCountryOptionModelStruct({
    String? code,
    String? name,
    String? short_name,
    String? country,
    bool? isSelected,
  })  : _code = code,
        _name = name,
        _short_name = short_name,
        _isSelected = isSelected,
        _country = country;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hascode() => _code != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasname() => _name != null;

  // "short_name" field.
  String? _short_name;
  String get short_name => _short_name ?? '';
  set short_name(String? val) => _short_name = val;

  bool hasshort_name() => _short_name != null;

  // "isSelected" field.
  bool? _isSelected;
  bool get isSelected => _isSelected ?? false;
  set isSelected(bool? val) => _isSelected = val;

  bool hasIsSelected() => _isSelected != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hascountry() => _country != null;

  static BankCountryOptionModelStruct fromMap(Map<String, dynamic> data) =>
      BankCountryOptionModelStruct(
        code: data['code'] as String?,
        name: data['name'] as String?,
        short_name: data['short_name'] as String?,
        isSelected: data['isSelected'] as bool?,
        country: data['country'] as String?,
      );

  static BankCountryOptionModelStruct? maybeFromMap(dynamic data) => data is Map
      ? BankCountryOptionModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
        'name': _name,
        'short_name': _short_name,
        'isSelected': _isSelected,
        'country': _country,
      };

  @override
  String toString() => 'BankCountryOptionModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BankCountryOptionModelStruct &&
        code == other.code &&
        name == other.name &&
        short_name == other.short_name &&
        isSelected == other.isSelected &&
        country == other.country;
  }
}
