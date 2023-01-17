// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemberModel _$$_MemberModelFromJson(Map<String, dynamic> json) =>
    _$_MemberModel(
      id: json['id'] as int?,
      profile: json['profile'] as String?,
      defaultPhoto: json['default_photo'] as String?,
      phone: json['phone'] as String?,
      position: json['position'] as String?,
      name: json['name'] as String?,
      company: json['company'] as String?,
    );

Map<String, dynamic> _$$_MemberModelToJson(_$_MemberModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile': instance.profile,
      'default_photo': instance.defaultPhoto,
      'phone': instance.phone,
      'position': instance.position,
      'name': instance.name,
      'company': instance.company,
    };
