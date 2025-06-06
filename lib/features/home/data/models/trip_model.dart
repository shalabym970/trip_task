import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_task/core/enums/enums.dart';
import 'package:trip_task/core/shared/models/model.dart';
import 'package:trip_task/features/home/data/models/trip_participant_model.dart';
import 'package:trip_task/features/home/domain/entities/trip_entity.dart';

part 'trip_model.g.dart';

@JsonSerializable(checked: true, explicitToJson: true)
class TripModel extends TripEntity implements Model {
  const TripModel({
    required super.id,
    required super.status,
    required super.title,
    required super.startDate,
    required super.endDate,
    required List<TripParticipantModel> participants,
    required super.unfinishedTasks,
    required super.coverImage,
  }): super(participants: participants);


  factory TripModel.fromJson(Map<String, dynamic> json) {
    final flattened = {
      ...json,
      TripKeys.startDate: json['dates']?['start'] ?? '',
      TripKeys.endDate: json['dates']?['end'] ?? '',
    };
    return _$TripModelFromJson(flattened);
  }

  @override
  Map<String, dynamic> toJson() => _$TripModelToJson(this);

  factory TripModel.fromEntity(TripEntity entity) => TripModel(
    id: entity.id,
    status: entity.status,
    title: entity.title,
    startDate: entity.startDate,
    endDate: entity.endDate,
    participants: entity.participants
        .map((e) => TripParticipantModel.fromEntity(e))
        .toList(),
    unfinishedTasks: entity.unfinishedTasks,
    coverImage: entity.coverImage,
  );
}


