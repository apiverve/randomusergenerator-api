/// Response models for the Random User Generator API.

/// API Response wrapper.
class RandomusergeneratorResponse {
  final String status;
  final dynamic error;
  final RandomusergeneratorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  RandomusergeneratorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory RandomusergeneratorResponse.fromJson(Map<String, dynamic> json) => RandomusergeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? RandomusergeneratorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Random User Generator API.

class RandomusergeneratorData {
  RandomusergeneratorData0? 0;

  RandomusergeneratorData({
    this.0,
  });

  factory RandomusergeneratorData.fromJson(Map<String, dynamic> json) => RandomusergeneratorData(
      0: json['0'] != null ? RandomusergeneratorData0.fromJson(json['0']) : null,
    );
}

class RandomusergeneratorData0 {
  String? id;
  String? name;
  String? gender;
  String? username;
  String? email;
  String? password;
  String? registered;
  String? phone;
  String? cell;
  String? birthdate;
  num? age;
  String? nationality;
  RandomusergeneratorData0Location? location;
  RandomusergeneratorData0Login? login;
  String? avatar;

  RandomusergeneratorData0({
    this.id,
    this.name,
    this.gender,
    this.username,
    this.email,
    this.password,
    this.registered,
    this.phone,
    this.cell,
    this.birthdate,
    this.age,
    this.nationality,
    this.location,
    this.login,
    this.avatar,
  });

  factory RandomusergeneratorData0.fromJson(Map<String, dynamic> json) => RandomusergeneratorData0(
      id: json['id'],
      name: json['name'],
      gender: json['gender'],
      username: json['username'],
      email: json['email'],
      password: json['password'],
      registered: json['registered'],
      phone: json['phone'],
      cell: json['cell'],
      birthdate: json['birthdate'],
      age: json['age'],
      nationality: json['nationality'],
      location: json['location'] != null ? RandomusergeneratorData0Location.fromJson(json['location']) : null,
      login: json['login'] != null ? RandomusergeneratorData0Login.fromJson(json['login']) : null,
      avatar: json['avatar'],
    );
}

class RandomusergeneratorData0Location {
  String? street;
  String? city;
  String? state;
  String? postcode;
  String? country;
  String? countryCode;
  num? latitude;
  num? longitude;
  String? timezone;

  RandomusergeneratorData0Location({
    this.street,
    this.city,
    this.state,
    this.postcode,
    this.country,
    this.countryCode,
    this.latitude,
    this.longitude,
    this.timezone,
  });

  factory RandomusergeneratorData0Location.fromJson(Map<String, dynamic> json) => RandomusergeneratorData0Location(
      street: json['street'],
      city: json['city'],
      state: json['state'],
      postcode: json['postcode'],
      country: json['country'],
      countryCode: json['countryCode'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      timezone: json['timezone'],
    );
}

class RandomusergeneratorData0Login {
  String? salt;
  String? md5;
  String? sha1;
  String? sha256;

  RandomusergeneratorData0Login({
    this.salt,
    this.md5,
    this.sha1,
    this.sha256,
  });

  factory RandomusergeneratorData0Login.fromJson(Map<String, dynamic> json) => RandomusergeneratorData0Login(
      salt: json['salt'],
      md5: json['md5'],
      sha1: json['sha1'],
      sha256: json['sha256'],
    );
}

class RandomusergeneratorRequest {
  int? count;
  bool? includeAvatar;
  String? gender;
  String? nationality;
  String? seed;

  RandomusergeneratorRequest({
    this.count,
    this.includeAvatar,
    this.gender,
    this.nationality,
    this.seed,
  });

  Map<String, dynamic> toJson() => {
      if (count != null) 'count': count,
      if (includeAvatar != null) 'includeAvatar': includeAvatar,
      if (gender != null) 'gender': gender,
      if (nationality != null) 'nationality': nationality,
      if (seed != null) 'seed': seed,
    };
}
