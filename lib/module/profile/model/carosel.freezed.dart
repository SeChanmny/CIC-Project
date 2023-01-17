// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carosel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CaroseModels _$CaroseModelsFromJson(Map<String, dynamic> json) {
  return _CaroseModels.fromJson(json);
}

/// @nodoc
mixin _$CaroseModels {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "key")
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "label")
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: "route")
  String? get route => throw _privateConstructorUsedError;
  @JsonKey(name: "icon")
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaroseModelsCopyWith<CaroseModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaroseModelsCopyWith<$Res> {
  factory $CaroseModelsCopyWith(
          CaroseModels value, $Res Function(CaroseModels) then) =
      _$CaroseModelsCopyWithImpl<$Res, CaroseModels>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "key") String? key,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "label") String? label,
      @JsonKey(name: "route") String? route,
      @JsonKey(name: "icon") String? icon});
}

/// @nodoc
class _$CaroseModelsCopyWithImpl<$Res, $Val extends CaroseModels>
    implements $CaroseModelsCopyWith<$Res> {
  _$CaroseModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? type = freezed,
    Object? label = freezed,
    Object? route = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CaroseModelsCopyWith<$Res>
    implements $CaroseModelsCopyWith<$Res> {
  factory _$$_CaroseModelsCopyWith(
          _$_CaroseModels value, $Res Function(_$_CaroseModels) then) =
      __$$_CaroseModelsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "key") String? key,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "label") String? label,
      @JsonKey(name: "route") String? route,
      @JsonKey(name: "icon") String? icon});
}

/// @nodoc
class __$$_CaroseModelsCopyWithImpl<$Res>
    extends _$CaroseModelsCopyWithImpl<$Res, _$_CaroseModels>
    implements _$$_CaroseModelsCopyWith<$Res> {
  __$$_CaroseModelsCopyWithImpl(
      _$_CaroseModels _value, $Res Function(_$_CaroseModels) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? type = freezed,
    Object? label = freezed,
    Object? route = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_CaroseModels(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CaroseModels implements _CaroseModels {
  _$_CaroseModels(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "key") this.key,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "label") this.label,
      @JsonKey(name: "route") this.route,
      @JsonKey(name: "icon") this.icon});

  factory _$_CaroseModels.fromJson(Map<String, dynamic> json) =>
      _$$_CaroseModelsFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "key")
  final String? key;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "label")
  final String? label;
  @override
  @JsonKey(name: "route")
  final String? route;
  @override
  @JsonKey(name: "icon")
  final String? icon;

  @override
  String toString() {
    return 'CaroseModels(id: $id, key: $key, type: $type, label: $label, route: $route, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CaroseModels &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, key, type, label, route, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CaroseModelsCopyWith<_$_CaroseModels> get copyWith =>
      __$$_CaroseModelsCopyWithImpl<_$_CaroseModels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CaroseModelsToJson(
      this,
    );
  }
}

abstract class _CaroseModels implements CaroseModels {
  factory _CaroseModels(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "key") final String? key,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "label") final String? label,
      @JsonKey(name: "route") final String? route,
      @JsonKey(name: "icon") final String? icon}) = _$_CaroseModels;

  factory _CaroseModels.fromJson(Map<String, dynamic> json) =
      _$_CaroseModels.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "key")
  String? get key;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "label")
  String? get label;
  @override
  @JsonKey(name: "route")
  String? get route;
  @override
  @JsonKey(name: "icon")
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$_CaroseModelsCopyWith<_$_CaroseModels> get copyWith =>
      throw _privateConstructorUsedError;
}
