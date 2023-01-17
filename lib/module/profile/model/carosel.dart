import 'package:freezed_annotation/freezed_annotation.dart';

part 'carosel.freezed.dart';
part 'carosel.g.dart';

@freezed
class CaroseModels with _$CaroseModels {
factory CaroseModels({ 
    @JsonKey(name: "id") final int? id,
    @JsonKey(name: "key") final String? key,
    @JsonKey(name: "type") final String? type,
    @JsonKey(name: "label") final String? label,
    @JsonKey(name: "route") final String? route,
    @JsonKey(name: "icon") final String? icon,
  }) = _CaroseModels; 
factory CaroseModels.fromJson(Map<String, dynamic> json) =>_$CaroseModelsFromJson(json); 
}