library nhs_login_result;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:nhs_login/src/models/authentication/nhs_authentication_response.dart';
import 'package:nhs_login/src/models/nhs_token_response.dart';
import 'package:nhs_login/src/models/serializers.dart';
import 'package:nhs_login/src/models/userinfo/nhs_userinfo.dart';

part 'nhs_login_result.g.dart';

abstract class NhsLoginResult
    implements Built<NhsLoginResult, NhsLoginResultBuilder> {
  factory NhsLoginResult([void updates(NhsLoginResultBuilder b)]) {
    return (_$NhsLoginResult().rebuild((NhsLoginResultBuilder b) {
      b
        ..otherParams = MapBuilder<String, String>()
        ..update(updates);
    }));
  }

  factory NhsLoginResult.fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(serializer, json);

  NhsLoginResult._();

  NhsAuthenticationResponse get authentication;

  @nullable
  NhsTokenResponse get token;

  @nullable
  NhsUserinfo get userinfo;

  bool get isError =>
      authentication.isError || token.isError || userinfo.isError;

  BuiltMap<String, String> get otherParams;

  @memoized
  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<NhsLoginResult> get serializer =>
      _$nhsLoginResultSerializer;
}
