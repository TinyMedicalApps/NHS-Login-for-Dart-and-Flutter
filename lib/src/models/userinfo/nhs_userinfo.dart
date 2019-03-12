library nhs_userinfo;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:nhs_login/src/models/authentication/nhs_scope.dart';
import 'package:nhs_login/src/models/nhs_response_error.dart';
import 'package:nhs_login/src/models/serializers.dart';
import 'package:nhs_login/src/models/userinfo/nhs_userinfo_error.dart';

part 'nhs_userinfo.g.dart';

abstract class NhsUserinfo
    implements
        Built<NhsUserinfo, NhsUserinfoBuilder>,
        NhsResponseError<NhsUserinfoError> {
  factory NhsUserinfo([void updates(NhsUserinfoBuilder b)]) = _$NhsUserinfo;

  factory NhsUserinfo.fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(serializer, json);

  NhsUserinfo._();

  /// Issuer Identifier for the Issuer of the response
  /// {iss}
  @BuiltValueField(wireName: 'iss')
  String get issuer;

  /// The Partner Service identifier
  /// {aud}
  @BuiltValueField(wireName: 'aud')
  String get audience;

  /// Subject - Identifier for the End-User at the Issuer.
  /// {sub}
  @BuiltValueField(wireName: 'sub')
  String get sub;

  /// Surname(s) or last name(s) of the End-User
  /// {family_name}
  @nullable
  @BuiltValueField(wireName: 'family_name')
  String get familyName;

  /// First name(s) of the End-User.
  /// {given_name}
  ///
  /// This information will only be returned where the user’s identity has been
  /// verified AND the [NhsScope.profileExtended] scope is requested AND the
  /// user consents to the claim being returned
  ///
  /// NOTE: Support for this claim is currently under user research and
  /// evaluation
  @nullable
  @BuiltValueField(wireName: 'given_name')
  String get givenName;

  /// End-User's preferred e-mail address
  /// {email}
  ///
  /// Present if [NhsScope.email] was present in the request
  @nullable
  String get email;

  /// True if the End-User's e-mail address has been verified; otherwise false
  /// {email_verified}
  ///
  /// Present if [NhsScope.email] was present in the request
  @nullable
  @BuiltValueField(wireName: 'email_verified')
  String get emailVerified;

  /// End-User's preferred phone number
  /// {phone_number}
  ///
  /// Present if [NhsScope.phone] was present in the request AND the user
  /// consents to the claim being returned
  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  /// True if the End-User's phone number has been verified; otherwise false
  /// {phone_number_verified}
  ///
  /// Present if [NhsScope.phone] was present in the request AND the user
  /// consents to the claim being returned
  @nullable
  @BuiltValueField(wireName: 'phone_number_verified')
  String get phoneNumberVerified;

  /// End-User’s date of birth
  /// {birthdate}
  @nullable
  DateTime get birthdate;

  /// End-User’s home address as held in the NHS Personal Demographics Service.
  /// {address}
  ///
  /// This information will only be returned where the user’s identity has been
  /// verified AND the [NhsScope.address] scope is requested AND the user
  /// consents to the claim being returned
  ///
  /// ```json
  /// {
  ///   "formatted": "Wisteria House\n1 Acacia Ave\n Bredon\n Narthwich\nNorfolk",
  ///   "postal_code": "AB12 3CD"
  /// }
  /// ```
  ///
  /// NOTE: Support for this claim is currently under user research and
  /// evaluation
  @nullable
  NhsAddressField get address;

  /// A string containing the End User’s NHS Number – this is a 10 digit string
  /// {nhs_number}
  @nullable
  @BuiltValueField(wireName: 'nhs_number')
  String get nhsNumber;

  /// These will only be returned where the user’s identity has been verified
  /// AND the [NhsScope.gpIntegrationCredentials] is requested AND the user
  /// consents to the claim being returned
  /// {gp_integration_credentials}
  ///
  /// NOTE: Support for this claim is currently under user research and
  /// evaluation
  @nullable
  @BuiltValueField(wireName: 'gp_integration_credentials')
  GpIntegrationCredentials get gpIntegrationCredentials;

  /// An array of other NHS Numbers for which this user has some authority to
  /// access data – the value is a hint for use in user-presentation and not for
  /// sole use in access-control decisions
  /// {delegations}
  ///
  /// NOTE: The approach to supporting delegations is currently under user
  /// research and evaluation
  @nullable
  BuiltList<String> get delegations;

  /// End-User’s registered General Practice as held in NHS Personal
  /// Demographics Service.
  /// {gp_registration_details}
  ///
  /// This information will only be returned where the user’s identity has been
  /// verified AND the [NhsScope.gpRegistrationDetails] is requested AND the
  /// user consents to the claim being returned
  ///
  /// NOTE: Support for this claim is currently under user research and
  /// evaluation
  @nullable
  @BuiltValueField(wireName: 'gp_registration_details')
  GpRegistrationDetails get gpRegistrationDetails;

  @override
  @nullable
  @BuiltValueField(wireName: 'error')
  NhsUserinfoError get error;

  @override
  @nullable
  @BuiltValueField(wireName: 'error_description')
  String get errorDescription;

  // Not USED
  @override
  String get errorUri => null;

  bool get isError => error != null;

  @memoized
  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<NhsUserinfo> get serializer => _$nhsUserinfoSerializer;
}

abstract class NhsAddressField
    implements Built<NhsAddressField, NhsAddressFieldBuilder> {
  factory NhsAddressField([void updates(NhsAddressFieldBuilder b)]) =
      _$NhsAddressField;

  factory NhsAddressField.fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(serializer, json);

  NhsAddressField._();

  /// {formatted}
  ///
  /// The address will be returned as a formatted string, using newline
  /// characters to separate the lines. Where possible the format will conform
  /// to the following:
  ///   1. House Name on line
  ///   2. House Number/Thoroughfare
  ///   3. Locality
  ///   4. Post Town
  ///   5. County
  String get formatted;

  /// {postal_code}
  @BuiltValueField(wireName: 'postal_code')
  String get postalCode;

  @memoized
  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<NhsAddressField> get serializer =>
      _$nhsAddressFieldSerializer;
}

abstract class GpIntegrationCredentials
    implements
        Built<GpIntegrationCredentials, GpIntegrationCredentialsBuilder> {
  factory GpIntegrationCredentials(
          [void updates(GpIntegrationCredentialsBuilder b)]) =
      _$GpIntegrationCredentials;

  factory GpIntegrationCredentials.fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(serializer, json);

  GpIntegrationCredentials._();

  @BuiltValueField(wireName: 'gp_user_id')
  String get gpUserId;

  @BuiltValueField(wireName: 'gp_system_id')
  String get gpSystemId;

  @BuiltValueField(wireName: 'gp_linkage_key')
  String get gpLinkageKey;

  @BuiltValueField(wireName: 'gp_ods_code')
  String get gpOdsCode;

  @memoized
  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<GpIntegrationCredentials> get serializer =>
      _$gpIntegrationCredentialsSerializer;
}

abstract class GpRegistrationDetails
    implements Built<GpRegistrationDetails, GpRegistrationDetailsBuilder> {
  factory GpRegistrationDetails(
      [void updates(GpRegistrationDetailsBuilder b)]) = _$GpRegistrationDetails;

  factory GpRegistrationDetails.fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(serializer, json);

  GpRegistrationDetails._();

  @BuiltValueField(wireName: 'gp_ods_code')
  String get gpOdsCode;

  @BuiltValueField(wireName: 'practice_name')
  String get practiceName;

  @BuiltValueField(wireName: 'practice_address')
  NhsAddressField get practiceAddress;

  @memoized
  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<GpRegistrationDetails> get serializer =>
      _$gpRegistrationDetailsSerializer;
}
