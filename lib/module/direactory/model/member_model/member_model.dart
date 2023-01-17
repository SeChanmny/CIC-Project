import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_model.freezed.dart';
part 'member_model.g.dart';

@freezed
class MemberModel with _$MemberModel {
  factory MemberModel({
    @JsonKey(name: "id") final int? id,
    @JsonKey(name: "profile") final String? profile,
    @JsonKey(name: "default_photo") final String? defaultPhoto,
    @JsonKey(name: "phone") final String? phone,
    @JsonKey(name: "position") final String? position,
    @JsonKey(name: "name") final String? name,
    @JsonKey(name: "company") final String? company,
  }) = _MemberModel;
  factory MemberModel.fromJson(Map<String, dynamic> json) =>
      _$MemberModelFromJson(json);
}
