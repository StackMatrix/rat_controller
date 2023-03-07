// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequestRepository _$LoginRequestRepositoryFromJson(
        Map<String, dynamic> json) =>
    LoginRequestRepository(
      account: json['account'] as String,
      password: json['password'] as String,
      operationType: json['operationType'] as int,
      device: json['device'],
    );

Map<String, dynamic> _$LoginRequestRepositoryToJson(
        LoginRequestRepository instance) =>
    <String, dynamic>{
      'account': instance.account,
      'password': instance.password,
      'operationType': instance.operationType,
      'device': instance.device,
    };

LoginResponseRepository _$LoginResponseRepositoryFromJson(
        Map<String, dynamic> json) =>
    LoginResponseRepository(
      status: json['status'] as int,
      data: json['data'] == null
          ? null
          : LoginResponseResultRepository.fromJson(
              json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String,
    );

Map<String, dynamic> _$LoginResponseRepositoryToJson(
        LoginResponseRepository instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data?.toJson(),
      'msg': instance.msg,
    };

LoginResponseResultRepository _$LoginResponseResultRepositoryFromJson(
        Map<String, dynamic> json) =>
    LoginResponseResultRepository(
      jwt: json['jwt'] as String,
    );

Map<String, dynamic> _$LoginResponseResultRepositoryToJson(
        LoginResponseResultRepository instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
    };
