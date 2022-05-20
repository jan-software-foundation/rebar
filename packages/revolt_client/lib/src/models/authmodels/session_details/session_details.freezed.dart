// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionDetails _$SessionDetailsFromJson(Map<String, dynamic> json) {
  return _SessionDetails.fromJson(json);
}

/// @nodoc
mixin _$SessionDetails {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "token")
  String get sessionToken => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get deviceName => throw _privateConstructorUsedError;
  @JsonKey(name: "subscription")
  String? get webPushSubscription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionDetailsCopyWith<SessionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDetailsCopyWith<$Res> {
  factory $SessionDetailsCopyWith(
          SessionDetails value, $Res Function(SessionDetails) then) =
      _$SessionDetailsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "token") String sessionToken,
      @JsonKey(name: "name") String deviceName,
      @JsonKey(name: "subscription") String? webPushSubscription});
}

/// @nodoc
class _$SessionDetailsCopyWithImpl<$Res>
    implements $SessionDetailsCopyWith<$Res> {
  _$SessionDetailsCopyWithImpl(this._value, this._then);

  final SessionDetails _value;
  // ignore: unused_field
  final $Res Function(SessionDetails) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? sessionToken = freezed,
    Object? deviceName = freezed,
    Object? webPushSubscription = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      sessionToken: sessionToken == freezed
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: deviceName == freezed
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      webPushSubscription: webPushSubscription == freezed
          ? _value.webPushSubscription
          : webPushSubscription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SessionDetailsCopyWith<$Res>
    implements $SessionDetailsCopyWith<$Res> {
  factory _$$_SessionDetailsCopyWith(
          _$_SessionDetails value, $Res Function(_$_SessionDetails) then) =
      __$$_SessionDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "token") String sessionToken,
      @JsonKey(name: "name") String deviceName,
      @JsonKey(name: "subscription") String? webPushSubscription});
}

/// @nodoc
class __$$_SessionDetailsCopyWithImpl<$Res>
    extends _$SessionDetailsCopyWithImpl<$Res>
    implements _$$_SessionDetailsCopyWith<$Res> {
  __$$_SessionDetailsCopyWithImpl(
      _$_SessionDetails _value, $Res Function(_$_SessionDetails) _then)
      : super(_value, (v) => _then(v as _$_SessionDetails));

  @override
  _$_SessionDetails get _value => super._value as _$_SessionDetails;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? sessionToken = freezed,
    Object? deviceName = freezed,
    Object? webPushSubscription = freezed,
  }) {
    return _then(_$_SessionDetails(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      sessionToken: sessionToken == freezed
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: deviceName == freezed
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      webPushSubscription: webPushSubscription == freezed
          ? _value.webPushSubscription
          : webPushSubscription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionDetails implements _SessionDetails {
  const _$_SessionDetails(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "token") required this.sessionToken,
      @JsonKey(name: "name") required this.deviceName,
      @JsonKey(name: "subscription") this.webPushSubscription});

  factory _$_SessionDetails.fromJson(Map<String, dynamic> json) =>
      _$$_SessionDetailsFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "token")
  final String sessionToken;
  @override
  @JsonKey(name: "name")
  final String deviceName;
  @override
  @JsonKey(name: "subscription")
  final String? webPushSubscription;

  @override
  String toString() {
    return 'SessionDetails(id: $id, userId: $userId, sessionToken: $sessionToken, deviceName: $deviceName, webPushSubscription: $webPushSubscription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionDetails &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.sessionToken, sessionToken) &&
            const DeepCollectionEquality()
                .equals(other.deviceName, deviceName) &&
            const DeepCollectionEquality()
                .equals(other.webPushSubscription, webPushSubscription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(sessionToken),
      const DeepCollectionEquality().hash(deviceName),
      const DeepCollectionEquality().hash(webPushSubscription));

  @JsonKey(ignore: true)
  @override
  _$$_SessionDetailsCopyWith<_$_SessionDetails> get copyWith =>
      __$$_SessionDetailsCopyWithImpl<_$_SessionDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionDetailsToJson(this);
  }
}

abstract class _SessionDetails implements SessionDetails {
  const factory _SessionDetails(
          {@JsonKey(name: "_id") required final String id,
          @JsonKey(name: "user_id") required final String userId,
          @JsonKey(name: "token") required final String sessionToken,
          @JsonKey(name: "name") required final String deviceName,
          @JsonKey(name: "subscription") final String? webPushSubscription}) =
      _$_SessionDetails;

  factory _SessionDetails.fromJson(Map<String, dynamic> json) =
      _$_SessionDetails.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "token")
  String get sessionToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "name")
  String get deviceName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "subscription")
  String? get webPushSubscription => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SessionDetailsCopyWith<_$_SessionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
