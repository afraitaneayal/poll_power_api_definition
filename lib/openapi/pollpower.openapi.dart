// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals, library_private_types_in_public_api

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'pollpower.openapi.g.dart';

///
@JsonSerializable()
@ApiUuidJsonConverter()
class Candidate implements OpenApiContent {
  Candidate({
    required this.slogan,
    this.speech,
    required this.voteCount,
    required this.id,
  });

  factory Candidate.fromJson(Map<String, dynamic> jsonMap) =>
      _$CandidateFromJson(jsonMap);

  @JsonKey(
    name: 'slogan',
    includeIfNull: false,
  )
  final String slogan;

  @JsonKey(
    name: 'speech',
    includeIfNull: false,
  )
  final String? speech;

  /// Candidate vote count
  @JsonKey(
    name: 'vote_count',
    includeIfNull: false,
  )
  final int voteCount;

  ///
  @JsonKey(
    name: 'id',
    includeIfNull: false,
  )
  final String id;

  Map<String, dynamic> toJson() => _$CandidateToJson(this);

  @override
  String toString() => toJson().toString();
}

/// This is a definition of user in the system
@JsonSerializable()
@ApiUuidJsonConverter()
class User implements OpenApiContent {
  User({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.grade,
    required this.areaOfStudy,
    this.image,
    this.candidate,
    required this.id,
  });

  factory User.fromJson(Map<String, dynamic> jsonMap) =>
      _$UserFromJson(jsonMap);

  @JsonKey(
    name: 'email',
    includeIfNull: false,
  )
  final String email;

  @JsonKey(
    name: 'password',
    includeIfNull: false,
  )
  final String password;

  @JsonKey(
    name: 'first_name',
    includeIfNull: false,
  )
  final String firstName;

  @JsonKey(
    name: 'last_name',
    includeIfNull: false,
  )
  final String lastName;

  @JsonKey(
    name: 'grade',
    includeIfNull: false,
  )
  final String grade;

  @JsonKey(
    name: 'area_of_study',
    includeIfNull: false,
  )
  final String areaOfStudy;

  @JsonKey(
    name: 'image',
    includeIfNull: false,
  )
  final String? image;

  ///
  @JsonKey(
    name: 'candidate',
    includeIfNull: false,
  )
  final Candidate? candidate;

  ///
  @JsonKey(
    name: 'id',
    includeIfNull: false,
  )
  final String id;

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() => toJson().toString();
}

/// Request to be send by user for loggin
@JsonSerializable()
@ApiUuidJsonConverter()
class UserLoginRequest implements OpenApiContent {
  UserLoginRequest({
    this.email,
    this.password,
  });

  factory UserLoginRequest.fromJson(Map<String, dynamic> jsonMap) =>
      _$UserLoginRequestFromJson(jsonMap);

  @JsonKey(
    name: 'email',
    includeIfNull: false,
  )
  final String? email;

  @JsonKey(
    name: 'password',
    includeIfNull: false,
  )
  final String? password;

  Map<String, dynamic> toJson() => _$UserLoginRequestToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class ErrorError implements OpenApiContent {
  ErrorError({
    this.devMessage,
    this.userFriendlyMessage,
  });

  factory ErrorError.fromJson(Map<String, dynamic> jsonMap) =>
      _$ErrorErrorFromJson(jsonMap);

  @JsonKey(
    name: 'devMessage',
    includeIfNull: false,
  )
  final String? devMessage;

  @JsonKey(
    name: 'userFriendlyMessage',
    includeIfNull: false,
  )
  final String? userFriendlyMessage;

  Map<String, dynamic> toJson() => _$ErrorErrorToJson(this);

  @override
  String toString() => toJson().toString();
}

/// Base error response
@JsonSerializable()
@ApiUuidJsonConverter()
class Error implements OpenApiContent {
  Error({this.error});

  factory Error.fromJson(Map<String, dynamic> jsonMap) =>
      _$ErrorFromJson(jsonMap);

  @JsonKey(
    name: 'error',
    includeIfNull: false,
  )
  final ErrorError? error;

  Map<String, dynamic> toJson() => _$ErrorToJson(this);

  @override
  String toString() => toJson().toString();
}

/// JWT response that contain token and refresh token
@JsonSerializable()
@ApiUuidJsonConverter()
class JWTresponse implements OpenApiContent {
  JWTresponse({
    required this.token,
    required this.refreshToken,
    required this.key,
  });

  factory JWTresponse.fromJson(Map<String, dynamic> jsonMap) =>
      _$JWTresponseFromJson(jsonMap);

  @JsonKey(
    name: 'token',
    includeIfNull: false,
  )
  final String token;

  @JsonKey(
    name: 'refresh_token',
    includeIfNull: false,
  )
  final String refreshToken;

  /// Kay that will be use by server to ensure that sender is allow
  @JsonKey(
    name: 'key',
    includeIfNull: false,
  )
  final String key;

  Map<String, dynamic> toJson() => _$JWTresponseToJson(this);

  @override
  String toString() => toJson().toString();
}

/// Web socket response to updated candidate vote count at user side
@JsonSerializable()
@ApiUuidJsonConverter()
class WsResponse implements OpenApiContent {
  WsResponse({this.candidateId});

  factory WsResponse.fromJson(Map<String, dynamic> jsonMap) =>
      _$WsResponseFromJson(jsonMap);

  @JsonKey(
    name: 'candidate_id',
    includeIfNull: false,
  )
  final String? candidateId;

  Map<String, dynamic> toJson() => _$WsResponseToJson(this);

  @override
  String toString() => toJson().toString();
}

///
@JsonSerializable()
@ApiUuidJsonConverter()
class VotingRequest implements OpenApiContent {
  VotingRequest({
    this.candidateId,
    this.votedAt,
    this.userId,
  });

  factory VotingRequest.fromJson(Map<String, dynamic> jsonMap) =>
      _$VotingRequestFromJson(jsonMap);

  @JsonKey(
    name: 'candidate_id',
    includeIfNull: false,
  )
  final String? candidateId;

  @JsonKey(
    name: 'voted_at',
    includeIfNull: false,
  )
  final String? votedAt;

  @JsonKey(
    name: 'user_id',
    includeIfNull: false,
  )
  final String? userId;

  Map<String, dynamic> toJson() => _$VotingRequestToJson(this);

  @override
  String toString() => toJson().toString();
}

class LoginUserResponse200 extends LoginUserResponse {
  /// Login succesfuly trigger
  LoginUserResponse200.response200() : status = 200;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'contentType': contentType,
      };
}

class LoginUserResponse400 extends LoginUserResponse
    implements OpenApiResponseBodyJson {
  /// User send bad request like v1/auth/login with get methode
  LoginUserResponse400.response400(this.body)
      : status = 400,
        bodyJson = body.toJson();

  @override
  final int status;

  final Error body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType,
      };
}

class LoginUserResponse500 extends LoginUserResponse
    implements OpenApiResponseBodyJson {
  /// Internal server error
  LoginUserResponse500.response500(this.body)
      : status = 500,
        bodyJson = body.toJson();

  @override
  final int status;

  final Error body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType,
      };
}

sealed class LoginUserResponse extends OpenApiResponse
    implements HasSuccessResponse<void> {
  LoginUserResponse();

  /// Login succesfuly trigger
  factory LoginUserResponse.response200() => LoginUserResponse200.response200();

  /// User send bad request like v1/auth/login with get methode
  factory LoginUserResponse.response400(Error body) =>
      LoginUserResponse400.response400(body);

  /// Internal server error
  factory LoginUserResponse.response500(Error body) =>
      LoginUserResponse500.response500(body);

  R map<R>({
    required ResponseMap<LoginUserResponse200, R> on200,
    required ResponseMap<LoginUserResponse400, R> on400,
    required ResponseMap<LoginUserResponse500, R> on500,
    ResponseMap<LoginUserResponse, R>? onElse,
  }) {
    if (this is LoginUserResponse200) {
      return on200((this as LoginUserResponse200));
    } else if (this is LoginUserResponse400) {
      return on400((this as LoginUserResponse400));
    } else if (this is LoginUserResponse500) {
      return on500((this as LoginUserResponse500));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  Login succesfuly trigger
  @override
  void requireSuccess() {
    if (this is LoginUserResponse200) {
      return;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class SignUpUserResponse201 extends SignUpUserResponse
    implements OpenApiResponseBodyJson {
  /// User successfuly created
  SignUpUserResponse201.response201(this.body)
      : status = 201,
        bodyJson = body.toJson();

  @override
  final int status;

  final JWTresponse body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType,
      };
}

class SignUpUserResponse400 extends SignUpUserResponse
    implements OpenApiResponseBodyJson {
  /// Bad request
  SignUpUserResponse400.response400(this.body)
      : status = 400,
        bodyJson = body.toJson();

  @override
  final int status;

  final Error body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType,
      };
}

class SignUpUserResponse500 extends SignUpUserResponse
    implements OpenApiResponseBodyJson {
  /// Internal server error
  SignUpUserResponse500.response500(this.body)
      : status = 500,
        bodyJson = body.toJson();

  @override
  final int status;

  final Error body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType,
      };
}

sealed class SignUpUserResponse extends OpenApiResponse
    implements HasSuccessResponse<JWTresponse> {
  SignUpUserResponse();

  /// User successfuly created
  factory SignUpUserResponse.response201(JWTresponse body) =>
      SignUpUserResponse201.response201(body);

  /// Bad request
  factory SignUpUserResponse.response400(Error body) =>
      SignUpUserResponse400.response400(body);

  /// Internal server error
  factory SignUpUserResponse.response500(Error body) =>
      SignUpUserResponse500.response500(body);

  R map<R>({
    required ResponseMap<SignUpUserResponse201, R> on201,
    required ResponseMap<SignUpUserResponse400, R> on400,
    required ResponseMap<SignUpUserResponse500, R> on500,
    ResponseMap<SignUpUserResponse, R>? onElse,
  }) {
    if (this is SignUpUserResponse201) {
      return on201((this as SignUpUserResponse201));
    } else if (this is SignUpUserResponse400) {
      return on400((this as SignUpUserResponse400));
    } else if (this is SignUpUserResponse500) {
      return on500((this as SignUpUserResponse500));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 201:  User successfuly created
  @override
  JWTresponse requireSuccess() {
    if (this is SignUpUserResponse201) {
      return (this as SignUpUserResponse201).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class GetCandidatesResponse200 extends GetCandidatesResponse
    implements OpenApiResponseBodyJson {
  /// Successfuly got candidates
  GetCandidatesResponse200.response200(this.body)
      : status = 200,
        bodyJson = {};

  @override
  final int status;

  final List<User> body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType,
      };
}

class GetCandidatesResponse400 extends GetCandidatesResponse
    implements OpenApiResponseBodyJson {
  /// Bad request
  GetCandidatesResponse400.response400(this.body)
      : status = 400,
        bodyJson = body.toJson();

  @override
  final int status;

  final Error body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType,
      };
}

class GetCandidatesResponse401 extends GetCandidatesResponse
    implements OpenApiResponseBodyJson {
  /// Unauthorized user
  GetCandidatesResponse401.response401(this.body)
      : status = 401,
        bodyJson = body.toJson();

  @override
  final int status;

  final Error body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType,
      };
}

class GetCandidatesResponse500 extends GetCandidatesResponse
    implements OpenApiResponseBodyJson {
  /// Internal server error
  GetCandidatesResponse500.response500(this.body)
      : status = 500,
        bodyJson = body.toJson();

  @override
  final int status;

  final Error body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType,
      };
}

sealed class GetCandidatesResponse extends OpenApiResponse
    implements HasSuccessResponse<List<User>> {
  GetCandidatesResponse();

  /// Successfuly got candidates
  factory GetCandidatesResponse.response200(List<User> body) =>
      GetCandidatesResponse200.response200(body);

  /// Bad request
  factory GetCandidatesResponse.response400(Error body) =>
      GetCandidatesResponse400.response400(body);

  /// Unauthorized user
  factory GetCandidatesResponse.response401(Error body) =>
      GetCandidatesResponse401.response401(body);

  /// Internal server error
  factory GetCandidatesResponse.response500(Error body) =>
      GetCandidatesResponse500.response500(body);

  R map<R>({
    required ResponseMap<GetCandidatesResponse200, R> on200,
    required ResponseMap<GetCandidatesResponse400, R> on400,
    required ResponseMap<GetCandidatesResponse401, R> on401,
    required ResponseMap<GetCandidatesResponse500, R> on500,
    ResponseMap<GetCandidatesResponse, R>? onElse,
  }) {
    if (this is GetCandidatesResponse200) {
      return on200((this as GetCandidatesResponse200));
    } else if (this is GetCandidatesResponse400) {
      return on400((this as GetCandidatesResponse400));
    } else if (this is GetCandidatesResponse401) {
      return on401((this as GetCandidatesResponse401));
    } else if (this is GetCandidatesResponse500) {
      return on500((this as GetCandidatesResponse500));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  Successfuly got candidates
  @override
  List<User> requireSuccess() {
    if (this is GetCandidatesResponse200) {
      return (this as GetCandidatesResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class SubscribeResponse200 extends SubscribeResponse
    implements OpenApiResponseBodyJson {
  /// Successfuly connected to web socket
  SubscribeResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final WsResponse body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType,
      };
}

sealed class SubscribeResponse extends OpenApiResponse
    implements HasSuccessResponse<WsResponse> {
  SubscribeResponse();

  /// Successfuly connected to web socket
  factory SubscribeResponse.response200(WsResponse body) =>
      SubscribeResponse200.response200(body);

  R map<R>({
    required ResponseMap<SubscribeResponse200, R> on200,
    ResponseMap<SubscribeResponse, R>? onElse,
  }) {
    if (this is SubscribeResponse200) {
      return on200((this as SubscribeResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  Successfuly connected to web socket
  @override
  WsResponse requireSuccess() {
    if (this is SubscribeResponse200) {
      return (this as SubscribeResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class VoteCandidateResponse200 extends VoteCandidateResponse {
  /// Successfuly voted
  VoteCandidateResponse200.response200() : status = 200;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'contentType': contentType,
      };
}

class VoteCandidateResponse400 extends VoteCandidateResponse
    implements OpenApiResponseBodyJson {
  /// Bad request
  VoteCandidateResponse400.response400(this.body)
      : status = 400,
        bodyJson = body.toJson();

  @override
  final int status;

  final Error body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType,
      };
}

class VoteCandidateResponse401 extends VoteCandidateResponse
    implements OpenApiResponseBodyJson {
  /// Unauthorized user
  VoteCandidateResponse401.response401(this.body)
      : status = 401,
        bodyJson = body.toJson();

  @override
  final int status;

  final Error body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType,
      };
}

class VoteCandidateResponse404 extends VoteCandidateResponse
    implements OpenApiResponseBodyJson {
  /// Candidate not found
  VoteCandidateResponse404.response404(this.body)
      : status = 404,
        bodyJson = body.toJson();

  @override
  final int status;

  final Error body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType,
      };
}

class VoteCandidateResponse500 extends VoteCandidateResponse
    implements OpenApiResponseBodyJson {
  /// Internal server error
  VoteCandidateResponse500.response500(this.body)
      : status = 500,
        bodyJson = body.toJson();

  @override
  final int status;

  final Error body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType,
      };
}

sealed class VoteCandidateResponse extends OpenApiResponse
    implements HasSuccessResponse<void> {
  VoteCandidateResponse();

  /// Successfuly voted
  factory VoteCandidateResponse.response200() =>
      VoteCandidateResponse200.response200();

  /// Bad request
  factory VoteCandidateResponse.response400(Error body) =>
      VoteCandidateResponse400.response400(body);

  /// Unauthorized user
  factory VoteCandidateResponse.response401(Error body) =>
      VoteCandidateResponse401.response401(body);

  /// Candidate not found
  factory VoteCandidateResponse.response404(Error body) =>
      VoteCandidateResponse404.response404(body);

  /// Internal server error
  factory VoteCandidateResponse.response500(Error body) =>
      VoteCandidateResponse500.response500(body);

  R map<R>({
    required ResponseMap<VoteCandidateResponse200, R> on200,
    required ResponseMap<VoteCandidateResponse400, R> on400,
    required ResponseMap<VoteCandidateResponse401, R> on401,
    required ResponseMap<VoteCandidateResponse404, R> on404,
    required ResponseMap<VoteCandidateResponse500, R> on500,
    ResponseMap<VoteCandidateResponse, R>? onElse,
  }) {
    if (this is VoteCandidateResponse200) {
      return on200((this as VoteCandidateResponse200));
    } else if (this is VoteCandidateResponse400) {
      return on400((this as VoteCandidateResponse400));
    } else if (this is VoteCandidateResponse401) {
      return on401((this as VoteCandidateResponse401));
    } else if (this is VoteCandidateResponse404) {
      return on404((this as VoteCandidateResponse404));
    } else if (this is VoteCandidateResponse500) {
      return on500((this as VoteCandidateResponse500));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  Successfuly voted
  @override
  void requireSuccess() {
    if (this is VoteCandidateResponse200) {
      return;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

abstract class Pollpower implements ApiEndpoint {
  /// Post methode for loggin
  /// Post methode that allow user to send thier info and get their credentials
  /// post: /v1/auth/login
  /// [body]: Request to be send by user for loggin
  Future<LoginUserResponse> loginUser(UserLoginRequest body);

  /// Post method to create new user
  /// Post method to create new user and return their access
  /// post: /v1/auth/signup
  Future<SignUpUserResponse> signUpUser({required bool isCandidate});

  /// Get method
  /// get: /v1/candidates
  Future<GetCandidatesResponse> getCandidates();

  /// get: /v1/ws
  Future<SubscribeResponse> subscribe();

  /// Post methot for voting
  /// post: /v1/votes
  /// [body]:
  Future<VoteCandidateResponse> voteCandidate(VotingRequest body);
}

abstract class PollpowerClient implements OpenApiClient {
  factory PollpowerClient(
    Uri baseUri,
    OpenApiRequestSender requestSender,
  ) =>
      _PollpowerClientImpl._(
        baseUri,
        requestSender,
      );

  /// Post methode for loggin
  /// Post methode that allow user to send thier info and get their credentials
  /// post: /v1/auth/login
  ///
  /// [body]: Request to be send by user for loggin
  Future<LoginUserResponse> loginUser(UserLoginRequest body);

  /// Post method to create new user
  /// Post method to create new user and return their access
  /// post: /v1/auth/signup
  ///
  /// * [isCandidate]: Tcheck if suser who want to sign is a candidate or not
  Future<SignUpUserResponse> signUpUser({required bool isCandidate});

  /// Get method
  /// get: /v1/candidates
  ///
  Future<GetCandidatesResponse> getCandidates();

  /// get: /v1/ws
  ///
  Future<SubscribeResponse> subscribe();

  /// Post methot for voting
  /// post: /v1/votes
  ///
  /// [body]:
  Future<VoteCandidateResponse> voteCandidate(VotingRequest body);
}

class _PollpowerClientImpl extends OpenApiClientBase
    implements PollpowerClient {
  _PollpowerClientImpl._(
    this.baseUri,
    this.requestSender,
  );

  @override
  final Uri baseUri;

  @override
  final OpenApiRequestSender requestSender;

  /// Post methode for loggin
  /// Post methode that allow user to send thier info and get their credentials
  /// post: /v1/auth/login
  ///
  /// [body]: Request to be send by user for loggin
  @override
  Future<LoginUserResponse> loginUser(UserLoginRequest body) async {
    final request = OpenApiClientRequest(
      'post',
      '/v1/auth/login',
      [
        SecurityRequirement(schemes: [
          SecurityRequirementScheme(
            scheme: SecuritySchemes.jwt,
            scopes: [],
          )
        ])
      ],
    );
    request.setHeader(
      'content-type',
      'application/json',
    );
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            LoginUserResponse200.response200(),
        '400': (OpenApiClientResponse response) async =>
            LoginUserResponse400.response400(
                Error.fromJson(await response.responseBodyJson())),
        '500': (OpenApiClientResponse response) async =>
            LoginUserResponse500.response500(
                Error.fromJson(await response.responseBodyJson())),
      },
    );
  }

  /// Post method to create new user
  /// Post method to create new user and return their access
  /// post: /v1/auth/signup
  ///
  /// * [isCandidate]: Tcheck if suser who want to sign is a candidate or not
  @override
  Future<SignUpUserResponse> signUpUser({required bool isCandidate}) async {
    final request = OpenApiClientRequest(
      'post',
      '/v1/auth/signup',
      [],
    );
    request.addQueryParameter(
      'isCandidate',
      encodeBool(isCandidate),
    );
    return await sendRequest(
      request,
      {
        '201': (OpenApiClientResponse response) async =>
            SignUpUserResponse201.response201(
                JWTresponse.fromJson(await response.responseBodyJson())),
        '400': (OpenApiClientResponse response) async =>
            SignUpUserResponse400.response400(
                Error.fromJson(await response.responseBodyJson())),
        '500': (OpenApiClientResponse response) async =>
            SignUpUserResponse500.response500(
                Error.fromJson(await response.responseBodyJson())),
      },
    );
  }

  /// Get method
  /// get: /v1/candidates
  ///
  @override
  Future<GetCandidatesResponse> getCandidates() async {
    final request = OpenApiClientRequest(
      'get',
      '/v1/candidates',
      [
        SecurityRequirement(schemes: [
          SecurityRequirementScheme(
            scheme: SecuritySchemes.jwt,
            scopes: [],
          )
        ])
      ],
    );
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            GetCandidatesResponse200.response200((await response
                    .responseBodyJsonDynamic() as List<dynamic>)
                .map((item) => User.fromJson((item as Map<String, dynamic>)))
                .toList()),
        '400': (OpenApiClientResponse response) async =>
            GetCandidatesResponse400.response400(
                Error.fromJson(await response.responseBodyJson())),
        '401': (OpenApiClientResponse response) async =>
            GetCandidatesResponse401.response401(
                Error.fromJson(await response.responseBodyJson())),
        '500': (OpenApiClientResponse response) async =>
            GetCandidatesResponse500.response500(
                Error.fromJson(await response.responseBodyJson())),
      },
    );
  }

  /// get: /v1/ws
  ///
  @override
  Future<SubscribeResponse> subscribe() async {
    final request = OpenApiClientRequest(
      'get',
      '/v1/ws',
      [],
    );
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            SubscribeResponse200.response200(
                WsResponse.fromJson(await response.responseBodyJson()))
      },
    );
  }

  /// Post methot for voting
  /// post: /v1/votes
  ///
  /// [body]:
  @override
  Future<VoteCandidateResponse> voteCandidate(VotingRequest body) async {
    final request = OpenApiClientRequest(
      'post',
      '/v1/votes',
      [
        SecurityRequirement(schemes: [
          SecurityRequirementScheme(
            scheme: SecuritySchemes.jwt,
            scopes: [],
          )
        ])
      ],
    );
    request.setHeader(
      'content-type',
      'application/json',
    );
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            VoteCandidateResponse200.response200(),
        '400': (OpenApiClientResponse response) async =>
            VoteCandidateResponse400.response400(
                Error.fromJson(await response.responseBodyJson())),
        '401': (OpenApiClientResponse response) async =>
            VoteCandidateResponse401.response401(
                Error.fromJson(await response.responseBodyJson())),
        '404': (OpenApiClientResponse response) async =>
            VoteCandidateResponse404.response404(
                Error.fromJson(await response.responseBodyJson())),
        '500': (OpenApiClientResponse response) async =>
            VoteCandidateResponse500.response500(
                Error.fromJson(await response.responseBodyJson())),
      },
    );
  }
}

class PollpowerUrlResolve with OpenApiUrlEncodeMixin {
  /// Post methode for loggin
  /// Post methode that allow user to send thier info and get their credentials
  /// post: /v1/auth/login
  ///
  OpenApiClientRequest loginUser() {
    final request = OpenApiClientRequest(
      'post',
      '/v1/auth/login',
      [
        SecurityRequirement(schemes: [
          SecurityRequirementScheme(
            scheme: SecuritySchemes.jwt,
            scopes: [],
          )
        ])
      ],
    );
    return request;
  }

  /// Post method to create new user
  /// Post method to create new user and return their access
  /// post: /v1/auth/signup
  ///
  /// * [isCandidate]: Tcheck if suser who want to sign is a candidate or not
  OpenApiClientRequest signUpUser({required bool isCandidate}) {
    final request = OpenApiClientRequest(
      'post',
      '/v1/auth/signup',
      [],
    );
    request.addQueryParameter(
      'isCandidate',
      encodeBool(isCandidate),
    );
    return request;
  }

  /// Get method
  /// get: /v1/candidates
  ///
  OpenApiClientRequest getCandidates() {
    final request = OpenApiClientRequest(
      'get',
      '/v1/candidates',
      [
        SecurityRequirement(schemes: [
          SecurityRequirementScheme(
            scheme: SecuritySchemes.jwt,
            scopes: [],
          )
        ])
      ],
    );
    return request;
  }

  /// get: /v1/ws
  ///
  OpenApiClientRequest subscribe() {
    final request = OpenApiClientRequest(
      'get',
      '/v1/ws',
      [],
    );
    return request;
  }

  /// Post methot for voting
  /// post: /v1/votes
  ///
  OpenApiClientRequest voteCandidate() {
    final request = OpenApiClientRequest(
      'post',
      '/v1/votes',
      [
        SecurityRequirement(schemes: [
          SecurityRequirementScheme(
            scheme: SecuritySchemes.jwt,
            scopes: [],
          )
        ])
      ],
    );
    return request;
  }
}

class PollpowerRouter extends OpenApiServerRouterBase {
  PollpowerRouter(this.impl);

  final ApiEndpointProvider<Pollpower> impl;

  @override
  void configure() {
    addRoute(
      '/v1/auth/login',
      'post',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Pollpower impl) async => impl.loginUser(
              UserLoginRequest.fromJson(await request.readJsonBody())),
        );
      },
      security: [
        SecurityRequirement(schemes: [
          SecurityRequirementScheme(
            scheme: SecuritySchemes.jwt,
            scopes: [],
          )
        ])
      ],
    );
    addRoute(
      '/v1/auth/signup',
      'post',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Pollpower impl) async => impl.signUpUser(
              isCandidate: paramRequired(
            name: 'isCandidate',
            value: request.queryParameter('isCandidate'),
            decode: (value) => paramToBool(value),
          )),
        );
      },
      security: [],
    );
    addRoute(
      '/v1/candidates',
      'get',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Pollpower impl) async => impl.getCandidates(),
        );
      },
      security: [
        SecurityRequirement(schemes: [
          SecurityRequirementScheme(
            scheme: SecuritySchemes.jwt,
            scopes: [],
          )
        ])
      ],
    );
    addRoute(
      '/v1/ws',
      'get',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Pollpower impl) async => impl.subscribe(),
        );
      },
      security: [],
    );
    addRoute(
      '/v1/votes',
      'post',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Pollpower impl) async => impl.voteCandidate(
              VotingRequest.fromJson(await request.readJsonBody())),
        );
      },
      security: [
        SecurityRequirement(schemes: [
          SecurityRequirementScheme(
            scheme: SecuritySchemes.jwt,
            scopes: [],
          )
        ])
      ],
    );
  }
}

class SecuritySchemes {
  static final jwt =
      SecuritySchemeHttp(scheme: SecuritySchemeHttpScheme.bearer);
}

T _throwStateError<T>(String message) => throw StateError(message);
