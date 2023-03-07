import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'device_repository.g.dart';

@JsonSerializable()
class DeviceRepository {
  DeviceRepository({Key? key,
    this.deviceImei,
    this.deviceName,
    this.deviceModel,
    this.deviceLocation,
    this.deviceLat,
    this.deviceLon,
    this.devicePlatform
  });

  late String? deviceImei, deviceName, deviceModel, deviceLocation, deviceLat, deviceLon, devicePlatform;

  factory DeviceRepository.fromJson(Map<String, dynamic> json) => _$DeviceRepositoryFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceRepositoryToJson(this);
}