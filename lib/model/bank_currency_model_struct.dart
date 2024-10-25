// ignore_for_file: unnecessary_getters_setters

class BankCurrencyModelStruct {
  BankCurrencyModelStruct({
    String? id,
    String? name,
    bool? isDefault,
    bool? isAlwaysUse,
  })  : _id = id,
        _name = name,
        _isDefault = isDefault,
        _isAlwaysUse = isAlwaysUse;

  // "id" field.
  String? _id;
  String get id => _id ?? '1';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? 'VND';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "isDefault" field.
  bool? _isDefault;
  bool get isDefault => _isDefault ?? false;
  set isDefault(bool? val) => _isDefault = val;

  bool hasIsDefault() => _isDefault != null;

  // "isAlwaysUse" field.
  bool? _isAlwaysUse;
  bool get isAlwaysUse => _isAlwaysUse ?? false;
  set isAlwaysUse(bool? val) => _isAlwaysUse = val;

  bool hasIsAlwaysUse() => _isAlwaysUse != null;

  static BankCurrencyModelStruct fromMap(Map<String, dynamic> data) =>
      BankCurrencyModelStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        isDefault: data['isDefault'] as bool?,
        isAlwaysUse: data['isAlwaysUse'] as bool?,
      );

  static BankCurrencyModelStruct? maybeFromMap(dynamic data) => data is Map
      ? BankCurrencyModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'isDefault': _isDefault,
        'isAlwaysUse': _isAlwaysUse,
      };

  @override
  String toString() => 'BankCurrencyModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BankCurrencyModelStruct &&
        id == other.id &&
        name == other.name &&
        isDefault == other.isDefault &&
        isAlwaysUse == other.isAlwaysUse;
  }
}

BankCurrencyModelStruct createBankCurrencyModelStruct({
  String? id,
  String? name,
  bool? isDefault,
  bool? isAlwaysUse,
}) =>
    BankCurrencyModelStruct(
      id: id,
      name: name,
      isDefault: isDefault,
      isAlwaysUse: isAlwaysUse,
    );
