import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_task/core/shared/models/model.dart';
import 'package:trip_task/features/home/domain/entities/trip_participant_entity.dart';

part 'trip_participant_model.g.dart';

@JsonSerializable()
class TripParticipantModel extends TripParticipantEntity implements Model {
  const TripParticipantModel({
    required super.name,
    required super.avatarUrl,
  });

  factory TripParticipantModel.fromJson(Map<String, dynamic> json) =>
      _$TripParticipantModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TripParticipantModelToJson(this);

  factory TripParticipantModel.fromEntity(TripParticipantEntity entity) =>
      TripParticipantModel(
        name: entity.name,
        avatarUrl: entity.avatarUrl,
      );
}
