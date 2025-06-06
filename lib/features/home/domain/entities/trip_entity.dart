import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:trip_task/core/enums/enums.dart';
import 'package:trip_task/features/home/domain/entities/trip_participant_entity.dart';

abstract class TripEntity<TParticipant> extends Equatable {
  @JsonKey(name: TripKeys.id)
  final String id;

  @JsonKey(name: TripKeys.status)
  final TripStatus status;

  @JsonKey(name: TripKeys.title)
  final String title;

  @JsonKey(name: TripKeys.startDate)
  final String startDate;

  @JsonKey(name: TripKeys.endDate)
  final String endDate;

  @JsonKey(name: TripKeys.participants)
  final List<TParticipant> participants;

  @JsonKey(name: TripKeys.unfinishedTasks)
  final int unfinishedTasks;

  @JsonKey(name: TripKeys.coverImage)
  final String coverImage;

  const TripEntity({
    required this.id,
    required this.status,
    required this.title,
    required this.startDate,
    required this.endDate,
    required this.participants,
    required this.unfinishedTasks,
    required this.coverImage,
  });

  @override
  List<Object?> get props =>
      [
        id,
        status,
        title,
        startDate,
        endDate,
        participants,
        unfinishedTasks,
        coverImage,
      ];

}



class TripKeys {
  static const id = 'id';
  static const status = 'status';
  static const title = 'title';
  static const startDate = 'start_date';
  static const endDate = 'end_date';
  static const participants = 'participants';
  static const unfinishedTasks = 'unfinished_tasks';
  static const coverImage = 'cover_image';
}
