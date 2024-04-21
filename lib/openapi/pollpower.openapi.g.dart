// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pollpower.openapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      email: json['email'] as String,
      password: json['password'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      grade: json['grade'] as String,
      areaOfStudy: json['area_of_study'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{
    'email': instance.email,
    'password': instance.password,
    'first_name': instance.firstName,
    'last_name': instance.lastName,
    'grade': instance.grade,
    'area_of_study': instance.areaOfStudy,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('image', instance.image);
  return val;
}

Candidate _$CandidateFromJson(Map<String, dynamic> json) => Candidate(
      slogan: json['slogan'] as String,
      speech: json['speech'] as String?,
      voteCount: json['vote_count'] as int,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CandidateToJson(Candidate instance) {
  final val = <String, dynamic>{
    'slogan': instance.slogan,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('speech', instance.speech);
  val['vote_count'] = instance.voteCount;
  val['user'] = instance.user;
  return val;
}

UserLoginRequest _$UserLoginRequestFromJson(Map<String, dynamic> json) =>
    UserLoginRequest(
      email: json['email'] as String?,
      password: json['password'] as String?,
      appKey: json['appKey'] as String?,
    );

Map<String, dynamic> _$UserLoginRequestToJson(UserLoginRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('password', instance.password);
  writeNotNull('appKey', instance.appKey);
  return val;
}

JWTresponse _$JWTresponseFromJson(Map<String, dynamic> json) => JWTresponse(
      token: json['token'] as String,
      refreshToken: json['refresh_token'] as String,
      key: json['key'] as String,
    );

Map<String, dynamic> _$JWTresponseToJson(JWTresponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refresh_token': instance.refreshToken,
      'key': instance.key,
    };

VotingRequest _$VotingRequestFromJson(Map<String, dynamic> json) =>
    VotingRequest(
      candidateId: json['candidate_id'] as String?,
      votedAt: json['voted_at'] as String?,
      userId: json['user_id'] as String?,
      uuid: json['uuid'] as String,
    );

Map<String, dynamic> _$VotingRequestToJson(VotingRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('candidate_id', instance.candidateId);
  writeNotNull('voted_at', instance.votedAt);
  writeNotNull('user_id', instance.userId);
  val['uuid'] = instance.uuid;
  return val;
}

APIErrorError _$APIErrorErrorFromJson(Map<String, dynamic> json) =>
    APIErrorError(
      devMessage: json['devMessage'] as String?,
      userFriendlyMessage: json['userFriendlyMessage'] as String?,
    );

Map<String, dynamic> _$APIErrorErrorToJson(APIErrorError instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('devMessage', instance.devMessage);
  writeNotNull('userFriendlyMessage', instance.userFriendlyMessage);
  return val;
}

APIError _$APIErrorFromJson(Map<String, dynamic> json) => APIError(
      error: json['error'] == null
          ? null
          : APIErrorError.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$APIErrorToJson(APIError instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('error', instance.error);
  return val;
}

CandidateResponse _$CandidateResponseFromJson(Map<String, dynamic> json) =>
    CandidateResponse(
      candidates: (json['candidates'] as List<dynamic>?)
          ?.map((e) => Candidate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CandidateResponseToJson(CandidateResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('candidates', instance.candidates);
  return val;
}
