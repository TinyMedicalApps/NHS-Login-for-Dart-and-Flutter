// GENERATED CODE - DO NOT MODIFY BY HAND

part of nhs_prompt;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NhsPrompt _$blank = const NhsPrompt._('blank');
const NhsPrompt _$none = const NhsPrompt._('none');
const NhsPrompt _$login = const NhsPrompt._('login');

NhsPrompt _$NhsPromptValueOf(String name) {
  switch (name) {
    case 'blank':
      return _$blank;
    case 'none':
      return _$none;
    case 'login':
      return _$login;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<NhsPrompt> _$NhsPromptValues =
    new BuiltSet<NhsPrompt>(const <NhsPrompt>[
  _$blank,
  _$none,
  _$login,
]);

Serializer<NhsPrompt> _$nhsPromptSerializer = new _$NhsPromptSerializer();

class _$NhsPromptSerializer implements PrimitiveSerializer<NhsPrompt> {
  @override
  final Iterable<Type> types = const <Type>[NhsPrompt];
  @override
  final String wireName = 'NhsPrompt';

  @override
  Object serialize(Serializers serializers, NhsPrompt object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  NhsPrompt deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NhsPrompt.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
