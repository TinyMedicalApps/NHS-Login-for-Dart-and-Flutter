library nhs_display;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nhs_display.g.dart';

class NhsDisplay extends EnumClass {
  const NhsDisplay._(String name) : super(name);

  static const NhsDisplay page = _$page;

  static const NhsDisplay touch = _$touch;

  @Deprecated('Value not supported in this version.')
  static const NhsDisplay popup = _$popup;

  @Deprecated('Value not supported in this version.')
  static const NhsDisplay wap = _$wap;

  static BuiltSet<NhsDisplay> get values => _$NhsDisplayValues;

  static NhsDisplay valueOf(String name) => _$NhsDisplayValueOf(name);

  static Serializer<NhsDisplay> get serializer => _$nhsDisplaySerializer;
}
