// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceRepository _$DeviceRepositoryFromJson(Map<String, dynamic> json) =>
    DeviceRepository(
      deviceImei: json['deviceImei'] as String?,
      deviceName: json['deviceName'] as String?,
      deviceModel: json['deviceModel'] as String?,
      deviceLocation: json['deviceLocation'] as String?,
      deviceLat: json['deviceLat'] as String?,
      deviceLon: json['deviceLon'] as String?,
      devicePlatform: json['devicePlatform'] as String?,
    );

Map<String, dynamic> _$DeviceRepositoryToJson(DeviceRepository instance) =>
    <String, dynamic>{
      'deviceImei': instance.deviceImei,
      'deviceName': instance.deviceName,
      'deviceModel': instance.deviceModel,
      'deviceLocation': instance.deviceLocation,
      'deviceLat': instance.deviceLat,
      'deviceLon': instance.deviceLon,
      'devicePlatform': instance.devicePlatform,
    };
