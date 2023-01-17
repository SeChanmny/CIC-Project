import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_model.freezed.dart';
part 'meta_model.g.dart';

@freezed
class MetaModel with _$MetaModel {
factory MetaModel({ 
    @JsonKey(name: "current_page") final int? currentPage,
    @JsonKey(name: "from") final int? from,
    @JsonKey(name: "last_page") final int? lastPage,
    @JsonKey(name: "per_page") final int? perPage,
  }) = _MetaModel; 
factory MetaModel.fromJson(Map<String, dynamic> json) =>_$MetaModelFromJson(json); 
}