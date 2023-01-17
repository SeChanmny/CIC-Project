// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_company_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) {
  return _CompanyModel.fromJson(json);
}

/// @nodoc
mixin _$CompanyModel {
  bool get check => throw _privateConstructorUsedError;
  set check(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "display")
  String? get display => throw _privateConstructorUsedError;
  @JsonKey(name: "display_khmer")
  String? get displayKhmer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyModelCopyWith<CompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyModelCopyWith<$Res> {
  factory $CompanyModelCopyWith(
          CompanyModel value, $Res Function(CompanyModel) then) =
      _$CompanyModelCopyWithImpl<$Res, CompanyModel>;
  @useResult
  $Res call(
      {bool check,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "display") String? display,
      @JsonKey(name: "display_khmer") String? displayKhmer});
}

/// @nodoc
class _$CompanyModelCopyWithImpl<$Res, $Val extends CompanyModel>
    implements $CompanyModelCopyWith<$Res> {
  _$CompanyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? check = null,
    Object? id = freezed,
    Object? display = freezed,
    Object? displayKhmer = freezed,
  }) {
    return _then(_value.copyWith(
      check: null == check
          ? _value.check
          : check // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      displayKhmer: freezed == displayKhmer
          ? _value.displayKhmer
          : displayKhmer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CompanyModelCopyWith<$Res>
    implements $CompanyModelCopyWith<$Res> {
  factory _$$_CompanyModelCopyWith(
          _$_CompanyModel value, $Res Function(_$_CompanyModel) then) =
      __$$_CompanyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool check,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "display") String? display,
      @JsonKey(name: "display_khmer") String? displayKhmer});
}

/// @nodoc
class __$$_CompanyModelCopyWithImpl<$Res>
    extends _$CompanyModelCopyWithImpl<$Res, _$_CompanyModel>
    implements _$$_CompanyModelCopyWith<$Res> {
  __$$_CompanyModelCopyWithImpl(
      _$_CompanyModel _value, $Res Function(_$_CompanyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? check = null,
    Object? id = freezed,
    Object? display = freezed,
    Object? displayKhmer = freezed,
  }) {
    return _then(_$_CompanyModel(
      check: null == check
          ? _value.check
          : check // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      displayKhmer: freezed == displayKhmer
          ? _value.displayKhmer
          : displayKhmer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyModel implements _CompanyModel {
  _$_CompanyModel(
      {this.check = false,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "display") this.display,
      @JsonKey(name: "display_khmer") this.displayKhmer});

  factory _$_CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyModelFromJson(json);

  @override
  @JsonKey()
  bool check;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "display")
  final String? display;
  @override
  @JsonKey(name: "display_khmer")
  final String? displayKhmer;

  @override
  String toString() {
    return 'CompanyModel(check: $check, id: $id, display: $display, displayKhmer: $displayKhmer)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompanyModelCopyWith<_$_CompanyModel> get copyWith =>
      __$$_CompanyModelCopyWithImpl<_$_CompanyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyModelToJson(
      this,
    );
  }
}

abstract class _CompanyModel implements CompanyModel {
  factory _CompanyModel(
          {bool check,
          @JsonKey(name: "id") final int? id,
          @JsonKey(name: "display") final String? display,
          @JsonKey(name: "display_khmer") final String? displayKhmer}) =
      _$_CompanyModel;

  factory _CompanyModel.fromJson(Map<String, dynamic> json) =
      _$_CompanyModel.fromJson;

  @override
  bool get check;
  set check(bool value);
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "display")
  String? get display;
  @override
  @JsonKey(name: "display_khmer")
  String? get displayKhmer;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyModelCopyWith<_$_CompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
