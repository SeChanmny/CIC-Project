import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_model.freezed.dart';
part 'filter_model.g.dart';

@freezed
class FilterModel with _$FilterModel {
  factory FilterModel({
    @JsonKey(name: "id") final int? id,
    @JsonKey(name: "display") final String? display,
  }) = _FilterModel;
  factory FilterModel.fromJson(Map<String, dynamic> json) =>
      _$FilterModelFromJson(json);
}
