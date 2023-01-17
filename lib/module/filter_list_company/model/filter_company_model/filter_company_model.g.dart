// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyModel _$$_CompanyModelFromJson(Map<String, dynamic> json) =>
    _$_CompanyModel(
      check: json['check'] as bool? ?? false,
      id: json['id'] as int?,
      display: json['display'] as String?,
      displayKhmer: json['display_khmer'] as String?,
    );

Map<String, dynamic> _$$_CompanyModelToJson(_$_CompanyModel instance) =>
    <String, dynamic>{
      'check': instance.check,
      'id': instance.id,
      'display': instance.display,
      'display_khmer': instance.displayKhmer,
    };
