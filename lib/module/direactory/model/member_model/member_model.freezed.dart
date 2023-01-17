// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberModel _$MemberModelFromJson(Map<String, dynamic> json) {
  return _MemberModel.fromJson(json);
}

/// @nodoc
mixin _$MemberModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "profile")
  String? get profile => throw _privateConstructorUsedError;
  @JsonKey(name: "default_photo")
  String? get defaultPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "position")
  String? get position => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "company")
  String? get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberModelCopyWith<MemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberModelCopyWith<$Res> {
  factory $MemberModelCopyWith(
          MemberModel value, $Res Function(MemberModel) then) =
      _$MemberModelCopyWithImpl<$Res, MemberModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "profile") String? profile,
      @JsonKey(name: "default_photo") String? defaultPhoto,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "position") String? position,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "company") String? company});
}

/// @nodoc
class _$MemberModelCopyWithImpl<$Res, $Val extends MemberModel>
    implements $MemberModelCopyWith<$Res> {
  _$MemberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? profile = freezed,
    Object? defaultPhoto = freezed,
    Object? phone = freezed,
    Object? position = freezed,
    Object? name = freezed,
    Object? company = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultPhoto: freezed == defaultPhoto
          ? _value.defaultPhoto
          : defaultPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemberModelCopyWith<$Res>
    implements $MemberModelCopyWith<$Res> {
  factory _$$_MemberModelCopyWith(
          _$_MemberModel value, $Res Function(_$_MemberModel) then) =
      __$$_MemberModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "profile") String? profile,
      @JsonKey(name: "default_photo") String? defaultPhoto,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "position") String? position,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "company") String? company});
}

/// @nodoc
class __$$_MemberModelCopyWithImpl<$Res>
    extends _$MemberModelCopyWithImpl<$Res, _$_MemberModel>
    implements _$$_MemberModelCopyWith<$Res> {
  __$$_MemberModelCopyWithImpl(
      _$_MemberModel _value, $Res Function(_$_MemberModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? profile = freezed,
    Object? defaultPhoto = freezed,
    Object? phone = freezed,
    Object? position = freezed,
    Object? name = freezed,
    Object? company = freezed,
  }) {
    return _then(_$_MemberModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultPhoto: freezed == defaultPhoto
          ? _value.defaultPhoto
          : defaultPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberModel implements _MemberModel {
  _$_MemberModel(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "profile") this.profile,
      @JsonKey(name: "default_photo") this.defaultPhoto,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "position") this.position,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "company") this.company});

  factory _$_MemberModel.fromJson(Map<String, dynamic> json) =>
      _$$_MemberModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "profile")
  final String? profile;
  @override
  @JsonKey(name: "default_photo")
  final String? defaultPhoto;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "position")
  final String? position;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "company")
  final String? company;

  @override
  String toString() {
    return 'MemberModel(id: $id, profile: $profile, defaultPhoto: $defaultPhoto, phone: $phone, position: $position, name: $name, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.defaultPhoto, defaultPhoto) ||
                other.defaultPhoto == defaultPhoto) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.company, company) || other.company == company));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, profile, defaultPhoto, phone, position, name, company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberModelCopyWith<_$_MemberModel> get copyWith =>
      __$$_MemberModelCopyWithImpl<_$_MemberModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberModelToJson(
      this,
    );
  }
}

abstract class _MemberModel implements MemberModel {
  factory _MemberModel(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "profile") final String? profile,
      @JsonKey(name: "default_photo") final String? defaultPhoto,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "position") final String? position,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "company") final String? company}) = _$_MemberModel;

  factory _MemberModel.fromJson(Map<String, dynamic> json) =
      _$_MemberModel.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "profile")
  String? get profile;
  @override
  @JsonKey(name: "default_photo")
  String? get defaultPhoto;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "position")
  String? get position;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "company")
  String? get company;
  @override
  @JsonKey(ignore: true)
  _$$_MemberModelCopyWith<_$_MemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}
