// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterModel _$FilterModelFromJson(Map<String, dynamic> json) {
  return _FilterModel.fromJson(json);
}

/// @nodoc
mixin _$FilterModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "display")
  String? get display => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterModelCopyWith<FilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterModelCopyWith<$Res> {
  factory $FilterModelCopyWith(
          FilterModel value, $Res Function(FilterModel) then) =
      _$FilterModelCopyWithImpl<$Res, FilterModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "display") String? display});
}

/// @nodoc
class _$FilterModelCopyWithImpl<$Res, $Val extends FilterModel>
    implements $FilterModelCopyWith<$Res> {
  _$FilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? display = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterModelCopyWith<$Res>
    implements $FilterModelCopyWith<$Res> {
  factory _$$_FilterModelCopyWith(
          _$_FilterModel value, $Res Function(_$_FilterModel) then) =
      __$$_FilterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "display") String? display});
}

/// @nodoc
class __$$_FilterModelCopyWithImpl<$Res>
    extends _$FilterModelCopyWithImpl<$Res, _$_FilterModel>
    implements _$$_FilterModelCopyWith<$Res> {
  __$$_FilterModelCopyWithImpl(
      _$_FilterModel _value, $Res Function(_$_FilterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? display = freezed,
  }) {
    return _then(_$_FilterModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterModel implements _FilterModel {
  _$_FilterModel(
      {@JsonKey(name: "id") this.id, @JsonKey(name: "display") this.display});

  factory _$_FilterModel.fromJson(Map<String, dynamic> json) =>
      _$$_FilterModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "display")
  final String? display;

  @override
  String toString() {
    return 'FilterModel(id: $id, display: $display)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.display, display) || other.display == display));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, display);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterModelCopyWith<_$_FilterModel> get copyWith =>
      __$$_FilterModelCopyWithImpl<_$_FilterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilterModelToJson(
      this,
    );
  }
}

abstract class _FilterModel implements FilterModel {
  factory _FilterModel(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "display") final String? display}) = _$_FilterModel;

  factory _FilterModel.fromJson(Map<String, dynamic> json) =
      _$_FilterModel.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "display")
  String? get display;
  @override
  @JsonKey(ignore: true)
  _$$_FilterModelCopyWith<_$_FilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
