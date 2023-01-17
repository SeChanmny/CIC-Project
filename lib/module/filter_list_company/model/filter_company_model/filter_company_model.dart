import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_company_model.freezed.dart';
part 'filter_company_model.g.dart';

@unfreezed
class CompanyModel with _$CompanyModel {
  factory CompanyModel({
    @Default(false) bool check,
    @JsonKey(name: "id") final int? id,
    @JsonKey(name: "display") final String? display,
    @JsonKey(name: "display_khmer") final String? displayKhmer,
  }) = _CompanyModel;
  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}
