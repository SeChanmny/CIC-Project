import 'package:freezed_annotation/freezed_annotation.dart';

part 'icon_model.freezed.dart';
part 'icon_model.g.dart';

@freezed
class IconsModel with _$IconsModel {
factory IconsModel({ 
    @JsonKey(name: "id") final int? id,
    @JsonKey(name: "key") final String? key,
    @JsonKey(name: "type") final String? type,
    @JsonKey(name: "label") final String? label,
    @JsonKey(name: "route") final String? route,
    @JsonKey(name: "icon") final String? icon,
    @JsonKey(name: "active_icon") final String? activeIcon,
    @JsonKey(name: "active") final bool? active,
    @JsonKey(name: "guideline") final String? guideline,
  }) = _IconsModel; 
factory IconsModel.fromJson(Map<String, dynamic> json) =>_$IconsModelFromJson(json); 
}