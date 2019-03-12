import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:nhs_login/src/nhs_authentication.dart';

part 'package:nhs_login/src/models/authentication/nhs_vector_or_trust_impl.dart';

/// No Identity verification, user authenticated using password
NhsVectorOfTrust P0_Cp_Cd = P0 & Cp & Cd;

/// Medium Identity verification, user authenticated using password and enrolled
/// device (2FA)
NhsVectorOfTrust P5_Cp_Cd = P5 & Cp & Cd;

/// Medium Identity verification, user authenticated using password and shared
/// key within a device (2FA)
NhsVectorOfTrust P5_Cp_Ck = P5 & Cp & Ck;

/// High Identity verification, user authenticated using password and enrolled
/// device (2FA)
NhsVectorOfTrust P9_Cp_Cd = P9 & Cp & Cd;

/// High Identity verification, user authenticated using password and shared key
/// within a device (2FA)
NhsVectorOfTrust P9_Cp_Ck = P9 & Cp & Ck;

/// High Identity verification, user authenticated via asymmetric key within a
/// device (2FA) (for example, FIDO UAF authentication)
NhsVectorOfTrust P9_Cm = P9 & Cm;

/// The client MAY request a set of acceptable VoT values with the "vtr"
/// (vector of trust request) claim request as part of the Authentication
/// Request.
///
/// The value of this field is used in [NhsAuthentication.vectorOfTrust],
/// identifying a set of an acceptable set of vector components. The component
/// values within each vector are ANDed together while the separate vectors are
/// ORed together.
///
/// For example, a list of vectors in the form ‘P9 & Cp & Cd | P9 & Ck’ is
/// stating that either the full set of "P9 AND Cp AND Cd" simultaneously OR
/// the full set of "P9 AND Ck" simultaneously are acceptable for this
/// transaction.
///
/// Vector request values MAY omit components, indicating that any value is
/// acceptable for that component category, including omission of that component
/// in the response vector.
///
/// You can also use a value from the set of profiles defined above bitwise OR
/// them together.
///
/// [P0_Cp_Cd]
/// [P5_Cp_Cd]
/// [P5_Cp_Ck]
/// [P9_Cp_Cd]
/// [P9_Cp_Ck]
/// [P9_Cm]
///
/// ```dart
///   `P9_Cp_Cd | P9_Ck`
/// ```
abstract class NhsVectorOfTrust {
  _NhsVectorOfTrust operator |(_NhsVectorOfTrust value);

  _NhsVectorOfTrust operator &(_VectorOfTrust value);

  static Serializer<NhsVectorOfTrust> get serializer => _serializer;
}

NhsVectorOfTrustSerializer _serializer = NhsVectorOfTrustSerializer();

/// No Identity proofing
///
/// This maps to ‘Verification – None’ within DCB3051
const _VerificationLevel P0 = _VerificationLevel._P0;

/// Identity proven via GPG45 LOA L1
const _VerificationLevel P3 = _VerificationLevel._P3;

/// Knowledge-based verification ONLY
///
/// This maps to ‘Verification – Medium’ within DCB3051
const _VerificationLevel P5 = _VerificationLevel._P5;

/// Verified to P5 with some additional checks or assertion from a trusted
/// source (such as healthcare worker who has an established relationship with
/// the citizen)
const _VerificationLevel P6 = _VerificationLevel._P6;

/// Identity proven via GPG45 LOA L2
const _VerificationLevel P7 = _VerificationLevel._P7;

/// Physical comparison
///
/// This maps to ‘Verification – High’ within DCB3051
const _VerificationLevel P9 = _VerificationLevel._P9;

/// Password-based
///
/// The user is in possession of a secret (for example a password, PIN, etc)
/// belonging to the legitimate account holder.
const _AuthenticationContext Cp = _AuthenticationContext._Cp;

/// Registered Device
///
/// The user is in possession of a device which has previously been associated
/// with their account – delivery/use of the device is by identifiers only
const _AuthenticationContext Cd = _AuthenticationContext._Cd;

/// Shared Cryptographic key within a Registered Device
///
/// The user is in possession of a device which has previously been associated
/// with their account – delivery/use of the device is by a shared key
const _AuthenticationContext Ck = _AuthenticationContext._Ck;

/// Asymmetric Cryptographic key within a Registered Device
///
/// The user is in possession of a device which has previously been associated
/// with their account – delivery/use of the device is by cryptographic proof of
/// key possession using asymmetric key, such as a FIDO-compliant device
const _AuthenticationContext Cm = _AuthenticationContext._Cm;

class NhsVectorOfTrustSerializer
    implements PrimitiveSerializer<NhsVectorOfTrust> {
  NhsVectorOfTrustSerializer();

  final bool structured = false;
  @override
  final Iterable<Type> types = BuiltList<Type>([NhsVectorOfTrust]);
  @override
  final String wireName = 'NhsVectorOfTrust';

  @override
  Object serialize(Serializers serializers, NhsVectorOfTrust vot,
      {FullType specifiedType = FullType.unspecified}) {
    return vot.toString();
  }

  @override
  NhsVectorOfTrust deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final List<String> vot = List<String>.from(jsonDecode(serialized));

    return vot.fold(null, (NhsVectorOfTrust vot, String data) {
      final NhsVectorOfTrust current = data
              .split('.')
              .map((item) =>
                  _allValues.firstWhere((dynamic it) => it._value == item))
              .reduce((dynamic prev, dynamic current) => prev & current)
          as NhsVectorOfTrust;

      return vot == null ? current : vot | current;
    });
  }
}
