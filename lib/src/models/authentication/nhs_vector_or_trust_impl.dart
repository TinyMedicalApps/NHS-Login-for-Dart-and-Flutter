part of 'nhs_vector_or_trust.dart';

abstract class _VectorOfTrust {}

class _NhsVectorOfTrust extends NhsVectorOfTrust
    implements _VectorOfTrust, Comparable<_NhsVectorOfTrust> {
  _NhsVectorOfTrust._(this._values)
      : assert(!_values.any((it) => it is _NhsVectorOfTrust)),
        _isList = false;

  _NhsVectorOfTrust._list(this._values)
      : assert(_values.every((it) => it is _NhsVectorOfTrust)),
        _isList = true;

  final Set<_VectorOfTrust> _values;
  final bool _isList;

  _NhsVectorOfTrust operator |(_NhsVectorOfTrust value) {
    if (value._isList && _isList) {
      return _NhsVectorOfTrust._list(
          Set.from(_values.toList()..addAll(value._values)));
    } else if (_isList) {
      return _NhsVectorOfTrust._list(Set.from(_values.toList()..add(value)));
    } else if (value._isList) {
      return _NhsVectorOfTrust._list(
          Set.from(value._values.toList()..add(this)));
    } else {
      return _NhsVectorOfTrust._list(
          Set.from(<_NhsVectorOfTrust>[this, value]));
    }
  }

  _NhsVectorOfTrust operator &(_VectorOfTrust value) {
    if (value is _NhsVectorOfTrust) {
      if (value._values.any((it) => it is _VerificationLevel)) {
        return _NhsVectorOfTrust._(_values.toSet()
          ..removeWhere((it) => it is _VerificationLevel)
          ..addAll(value._values));
      } else {
        return _NhsVectorOfTrust._(_values.toSet()..addAll(value._values));
      }
    } else if (value is _VerificationLevel) {
      return _NhsVectorOfTrust._(_values.toSet()
        ..removeWhere((it) => it is _VerificationLevel)
        ..add(value));
    } else {
      assert(value is _AuthenticationContext);
      return _NhsVectorOfTrust._(_values.toSet()..add(value));
    }
  }

  @override
  int compareTo(_NhsVectorOfTrust other) {
    return 0;
  }

  @override
  String toString() {
    List<_VectorOfTrust> values = _values.toList();

    if (_isList) {
      final List<String> strings = <String>[];
      for (_NhsVectorOfTrust value in values) {
        strings.add(value._toStringList());
      }
      return jsonEncode(strings);
    } else {
      return jsonEncode(<String>[_toStringList()]);
    }
  }

  String _toStringList() {
    assert(!_isList);
    return _values.map((it) => it.toString()).join('.');
  }
}

class _VerificationLevel
    implements _VectorOfTrust, Comparable<_AuthenticationContext> {
  const _VerificationLevel._(this._value);

  final String _value;

  static const _VerificationLevel _P0 = _VerificationLevel._('P0');
  static const _VerificationLevel _P3 = _VerificationLevel._('P3');
  static const _VerificationLevel _P5 = _VerificationLevel._('P5');
  static const _VerificationLevel _P6 = _VerificationLevel._('P6');
  static const _VerificationLevel _P7 = _VerificationLevel._('P7');
  static const _VerificationLevel _P9 = _VerificationLevel._('P9');

  _NhsVectorOfTrust operator &(_VectorOfTrust value) {
    if (value is _NhsVectorOfTrust) {
      if (!value._values.contains(this)) {
        value._values
          ..removeWhere((it) => it is _VerificationLevel)
          ..add(this);
      }

      return value;
    } else if (value is _VerificationLevel) {
      return _NhsVectorOfTrust._(Set.from(<_VectorOfTrust>[value]));
    } else {
      assert(value is _AuthenticationContext);
      return _NhsVectorOfTrust._(Set.from(<_VectorOfTrust>[this, value]));
    }
  }

  static const List<_VerificationLevel> values = <_VerificationLevel>[
    _P0,
    _P3,
    _P5,
    _P6,
    _P7,
    _P9,
  ];

  @override
  String toString() {
    return _value;
  }

  @override
  int compareTo(_AuthenticationContext other) => -1;
}

class _AuthenticationContext
    implements _VectorOfTrust, Comparable<_VectorOfTrust> {
  const _AuthenticationContext._(this._value);

  final String _value;

  static const _AuthenticationContext _Cp = _AuthenticationContext._('Cp');
  static const _AuthenticationContext _Cd = _AuthenticationContext._('Cd');
  static const _AuthenticationContext _Ck = _AuthenticationContext._('Ck');
  static const _AuthenticationContext _Cm = _AuthenticationContext._('Cm');

  _NhsVectorOfTrust operator &(_VectorOfTrust value) {
    if (value is _NhsVectorOfTrust) {
      return value.._values.add(this);
    } else if (value is _VerificationLevel) {
      return _NhsVectorOfTrust._(Set.from(<_VectorOfTrust>[value, this]));
    } else {
      assert(value is _AuthenticationContext);
      return _NhsVectorOfTrust._(
          Set.from(<_AuthenticationContext>[this, value]));
    }
  }

  static const List<_AuthenticationContext> values = <_AuthenticationContext>[
    _Cp,
    _Cd,
    _Ck,
    _Cm,
  ];

  @override
  String toString() => _value;

  @override
  int compareTo(_VectorOfTrust other) {
    if (other is _VerificationLevel) {
      return 1;
    } else if (other is _AuthenticationContext) {
      return values.indexOf(this).compareTo(values.indexOf(other));
    } else {
      throw ArgumentError('not supported: ${other}');
    }
  }
}

const List<_VectorOfTrust> _allValues = <_VectorOfTrust>[
  _VerificationLevel._P0,
  _VerificationLevel._P3,
  _VerificationLevel._P5,
  _VerificationLevel._P6,
  _VerificationLevel._P7,
  _VerificationLevel._P9,
  _AuthenticationContext._Cp,
  _AuthenticationContext._Cd,
  _AuthenticationContext._Ck,
  _AuthenticationContext._Cm,
];
