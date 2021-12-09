import 'package:json_annotation/json_annotation.dart';

part 'session_details.g.dart';

@JsonSerializable(createToJson: false)
class SessionDetails {
  @JsonKey(name: "_id")
  final String? id;
  @JsonKey(name: "user_id")
  final String userId;
  @JsonKey(name: "token")
  final String sessionToken;
  @JsonKey(name: "name")
  final String deviceName;
  @JsonKey(name: "subscription")
  final String? webPushSubscription;

  SessionDetails(
    this.id,
    this.userId,
    this.sessionToken,
    this.deviceName,
    this.webPushSubscription,
  );

  factory SessionDetails.fromJson(Map<String, dynamic> json) =>
      _$SessionDetailsFromJson(json);
}
