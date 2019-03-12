library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:nhs_login/src/models/authentication/nhs_authentication_error.dart';
import 'package:nhs_login/src/models/authentication/nhs_authentication_response.dart';
import 'package:nhs_login/src/models/authentication/nhs_display.dart';
import 'package:nhs_login/src/models/authentication/nhs_prompt.dart';
import 'package:nhs_login/src/models/authentication/nhs_scope.dart';
import 'package:nhs_login/src/models/authentication/nhs_vector_or_trust.dart';
import 'package:nhs_login/src/models/nhs_login_result.dart';
import 'package:nhs_login/src/models/nhs_token_response.dart';
import 'package:nhs_login/src/models/token/nhs_id_token.dart';
import 'package:nhs_login/src/models/token/nhs_token_error.dart';
import 'package:nhs_login/src/models/userinfo/nhs_userinfo.dart';
import 'package:nhs_login/src/models/userinfo/nhs_userinfo_error.dart';
import 'package:nhs_login/src/nhs_authentication.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  GpIntegrationCredentials,
  GpRegistrationDetails,
  NhsAddressField,
  NhsAuthenticationResponse,
  NhsDisplay,
  NhsIdToken,
  NhsIdTokenHeader,
  NhsIdTokenPayload,
  NhsLoginResult,
  NhsPrompt,
  NhsTokenResponse,
  NhsUserinfo,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..add(NhsAuthentication.$serializer)
      ..add(NhsAuthenticationError.serializer)
      ..add(NhsScope.serializer)
      ..add(NhsTokenError.serializer)
      ..add(NhsUserinfoError.serializer)
      ..add(NhsTokenResponse.$serializer)
      ..add(NhsVectorOfTrust.serializer)
      ..add(DurationSerializer())
      ..add(DateTimeSerializer())
      ..addPlugin(StandardJsonPlugin())

    //
    )
    .build();

class DurationSerializer implements PrimitiveSerializer<Duration> {
  final bool structured = false;
  @override
  final Iterable<Type> types = new BuiltList<Type>([Duration]);
  @override
  final String wireName = 'Duration';

  @override
  Object serialize(Serializers serializers, Duration duration,
      {FullType specifiedType = FullType.unspecified}) {
    return duration.inSeconds.toString();
  }

  @override
  Duration deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return Duration(seconds: int.parse(serialized));
  }
}

class DateTimeSerializer implements PrimitiveSerializer<DateTime> {
  final bool structured = false;
  @override
  final Iterable<Type> types = new BuiltList<Type>([DateTime]);
  @override
  final String wireName = 'DateTime';

  @override
  Object serialize(Serializers serializers, DateTime dateTime,
      {FullType specifiedType = FullType.unspecified}) {
    if (!dateTime.isUtc) {
      throw new ArgumentError.value(
          dateTime, 'dateTime', 'Must be in utc for serialization.');
    }

    return dateTime.millisecondsSinceEpoch ~/ 1000;
  }

  @override
  DateTime deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    if (serialized is String) {
      return DateTime.parse(serialized);
    }
    final secondsSinceEpoch = serialized as int;
    return new DateTime.fromMillisecondsSinceEpoch(secondsSinceEpoch * 1000,
        isUtc: true);
  }
}
