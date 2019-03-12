import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:nhs_login/src/models/userinfo/nhs_userinfo.dart';

/// Scopes can be used to request that specific sets of information be made
/// available as Claim Values when making an Authentication Request
class NhsScope {
  const NhsScope._(this._value);

  factory NhsScope.forName(String it) {
    return values[_names.indexOf(it)];
  }

  final String _value;

  /// Mandatory value for OpenID Connect Requests
  static const NhsScope openId = NhsScope._('openid');

  /// This scope value requests access to the End-User's default profile claims,
  /// which are: [NhsUserinfo.nhsNumber], [NhsUserinfo.birthdate],
  /// [NhsUserinfo.familyName]
  static const NhsScope profile = NhsScope._('profile');

  /// This scope value requests access to the [NhsUserinfo.email] and
  /// [NhsUserinfo.emailVerified] claims
  static const NhsScope email = NhsScope._('email');

  /// This scope value requests access to the [NhsUserinfo.phoneNumber] and
  /// [NhsUserinfo.phoneNumberVerified] claims
  static const NhsScope phone = NhsScope._('phone');

  /// This scope value requests access to the [NhsUserinfo.address] claim as
  /// held within the NHS Personal Demographics Service
  @Deprecated(
      'Support for the address scope is currently under user research and '
      'evaluation.')
  static const NhsScope address = NhsScope._('address');

  /// This scope value requests access to the End-User's
  /// [NhsUserinfo.gpIntegrationCredentials] claims
  @Deprecated(
      'Support for the gp_integration_credentials scope is currently under '
      'user research and evaluation.')
  static const NhsScope gpIntegrationCredentials =
      NhsScope._('gp_integration_credentials');

  /// This scope value requests access to the End-User’s
  /// [NhsUserinfo.gpRegistrationDetails] claims as held within the NHS Personal
  /// Demographics Service
  @Deprecated(
      'Support for the gp_integration_credentials scope is currently under '
      'user research and evaluation.')
  static const NhsScope gpRegistrationDetails =
      NhsScope._('gp_registration_details');

  /// This scope value requests access to the End-User’s additional demographics
  /// claims (as held within the NHS Personal Demographics Service), which are:
  /// [NhsUserinfo.givenName]
  static const NhsScope profileExtended = NhsScope._('profile_extended');

  static const List<NhsScope> values = <NhsScope>[
    openId,
    profile,
    phone,
    email,
    address,
    gpIntegrationCredentials,
    gpRegistrationDetails,
    profileExtended,
  ];
  static const List<String> _names = <String>[
    'openid',
    'profile',
    'email',
    'phone',
    'address',
    'gp_integration_credentials',
    'gp_registration_details',
    'profile_extended',
  ];

  static NhsScopeSerializer get serializer => NhsScopeSerializer();

  @override
  String toString() => _value;
}

class NhsScopeSerializer implements PrimitiveSerializer<NhsScope> {
  NhsScopeSerializer();

  final bool structured = false;
  @override
  final Iterable<Type> types = BuiltList<Type>([NhsScope]);
  @override
  final String wireName = 'NhsScope';

  @override
  Object serialize(Serializers serializers, NhsScope error,
      {FullType specifiedType = FullType.unspecified}) {
    return error._value;
  }

  @override
  NhsScope deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return NhsScope.values[NhsScope._names.indexOf(serialized)];
  }
}
