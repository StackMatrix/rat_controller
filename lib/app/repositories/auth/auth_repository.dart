import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_repository.g.dart';

/// 登陆请求
@JsonSerializable(explicitToJson: true)
class LoginRequestRepository {
  LoginRequestRepository({Key? key,
    required this.account,
    required this.password,
    required this.operationType,
    required this.device
  });

  late String account, password;
  late int operationType;
  late dynamic device;

  factory LoginRequestRepository.fromJson(Map<String, dynamic> json) => _$LoginRequestRepositoryFromJson(json);
  Map<String, dynamic> toJson() => _$LoginRequestRepositoryToJson(this);
}

/// 登陆请求的响应
@JsonSerializable(explicitToJson: true)
class LoginResponseRepository {
  LoginResponseRepository({Key? key,
    required this.status,
    required this.data,
    required this.msg,
  });

  late int status;
  late LoginResponseResultRepository? data;
  late String msg;

  factory LoginResponseRepository.fromJson(Map<String, dynamic> json) => _$LoginResponseRepositoryFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseRepositoryToJson(this);
}


/// 登陆响应
@JsonSerializable()
class LoginResponseResultRepository {
  LoginResponseResultRepository({Key? key,
    required this.jwt,
  });

  late String jwt;

  factory LoginResponseResultRepository.fromJson(Map<String, dynamic> json) => _$LoginResponseResultRepositoryFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseResultRepositoryToJson(this);
}