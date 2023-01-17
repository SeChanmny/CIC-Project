// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IconsModel _$$_IconsModelFromJson(Map<String, dynamic> json) =>
    _$_IconsModel(
      id: json['id'] as int?,
      key: json['key'] as String?,
      type: json['type'] as String?,
      label: json['label'] as String?,
      route: json['route'] as String?,
      icon: json['icon'] as String?,
      activeIcon: json['active_icon'] as String?,
      active: json['active'] as bool?,
      guideline: json['guideline'] as String?,
    );

Map<String, dynamic> _$$_IconsModelToJson(_$_IconsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'type': instance.type,
      'label': instance.label,
      'route': instance.route,
      'icon': instance.icon,
      'active_icon': instance.activeIcon,
      'active': instance.active,
      'guideline': instance.guideline,
    };
