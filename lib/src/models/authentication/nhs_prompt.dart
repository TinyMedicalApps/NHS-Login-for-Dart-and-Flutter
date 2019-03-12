library nhs_prompt;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nhs_prompt.g.dart';

/// Requests that the NHS login Service forces the user to sign-in, or to
/// request that the Service does not prompt the user to sign-in (SSO)
class NhsPrompt extends EnumClass {
  const NhsPrompt._(String name) : super(name);

  static BuiltSet<NhsPrompt> get values => _$NhsPromptValues;

  /// The Service will SSO the user if they still have a valid session, else
  /// the user will be requested to login
  static const NhsPrompt blank = _$blank;

  /// The Service will SSO the user if they still have a valid session,
  /// otherwise an error code is returned
  static const NhsPrompt none = _$none;

  /// The Service will request the user to login, regardless of a session
  /// already existing
  static const NhsPrompt login = _$login;

  String get value {
    switch (this) {
      case blank:
        return '';
      default:
        return name;
    }
  }

  static NhsPrompt valueOf(String name) => _$NhsPromptValueOf(name);

  static Serializer<NhsPrompt> get serializer => _$nhsPromptSerializer;
}
