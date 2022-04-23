// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) {
  return _LoginRequest.fromJson(json);
}

/// @nodoc
mixin _$LoginRequest {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginRequestCopyWith<LoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestCopyWith<$Res> {
  factory $LoginRequestCopyWith(
          LoginRequest value, $Res Function(LoginRequest) then) =
      _$LoginRequestCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginRequestCopyWithImpl<$Res> implements $LoginRequestCopyWith<$Res> {
  _$LoginRequestCopyWithImpl(this._value, this._then);

  final LoginRequest _value;
  // ignore: unused_field
  final $Res Function(LoginRequest) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginRequestCopyWith<$Res>
    implements $LoginRequestCopyWith<$Res> {
  factory _$LoginRequestCopyWith(
          _LoginRequest value, $Res Function(_LoginRequest) then) =
      __$LoginRequestCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class __$LoginRequestCopyWithImpl<$Res> extends _$LoginRequestCopyWithImpl<$Res>
    implements _$LoginRequestCopyWith<$Res> {
  __$LoginRequestCopyWithImpl(
      _LoginRequest _value, $Res Function(_LoginRequest) _then)
      : super(_value, (v) => _then(v as _LoginRequest));

  @override
  _LoginRequest get _value => super._value as _LoginRequest;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_LoginRequest(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginRequest with DiagnosticableTreeMixin implements _LoginRequest {
  const _$_LoginRequest({required this.username, required this.password});

  factory _$_LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$$_LoginRequestFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginRequest(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginRequest'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginRequest &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$LoginRequestCopyWith<_LoginRequest> get copyWith =>
      __$LoginRequestCopyWithImpl<_LoginRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginRequestToJson(this);
  }
}

abstract class _LoginRequest implements LoginRequest {
  const factory _LoginRequest(
      {required final String username,
      required final String password}) = _$_LoginRequest;

  factory _LoginRequest.fromJson(Map<String, dynamic> json) =
      _$_LoginRequest.fromJson;

  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginRequestCopyWith<_LoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
