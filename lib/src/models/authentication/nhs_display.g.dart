// GENERATED CODE - DO NOT MODIFY BY HAND

part of nhs_display;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NhsDisplay _$page = const NhsDisplay._('page');
const NhsDisplay _$touch = const NhsDisplay._('touch');
const NhsDisplay _$popup = const NhsDisplay._('popup');
const NhsDisplay _$wap = const NhsDisplay._('wap');

NhsDisplay _$NhsDisplayValueOf(String name) {
  switch (name) {
    case 'page':
      return _$page;
    case 'touch':
      return _$touch;
    case 'popup':
      return _$popup;
    case 'wap':
      return _$wap;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<NhsDisplay> _$NhsDisplayValues =
    new BuiltSet<NhsDisplay>(const <NhsDisplay>[
  _$page,
  _$touch,
  _$popup,
  _$wap,
]);

Serializer<NhsDisplay> _$nhsDisplaySerializer = new _$NhsDisplaySerializer();

class _$NhsDisplaySerializer implements PrimitiveSerializer<NhsDisplay> {
  @override
  final Iterable<Type> types = const <Type>[NhsDisplay];
  @override
  final String wireName = 'NhsDisplay';

  @override
  Object serialize(Serializers serializers, NhsDisplay object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  NhsDisplay deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NhsDisplay.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
