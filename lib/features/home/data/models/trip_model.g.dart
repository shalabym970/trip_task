// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripModel _$TripModelFromJson(Map<String, dynamic> json) => $checkedCreate(
  'TripModel',
  json,
  ($checkedConvert) {
    final val = TripModel(
      id: $checkedConvert('id', (v) => v as String),
      status: $checkedConvert(
        'status',
        (v) => $enumDecode(_$TripStatusEnumMap, v),
      ),
      title: $checkedConvert('title', (v) => v as String),
      startDate: $checkedConvert('start_date', (v) => v as String),
      endDate: $checkedConvert('end_date', (v) => v as String),
      participants: $checkedConvert(
        'participants',
        (v) =>
            (v as List<dynamic>)
                .map(
                  (e) =>
                      TripParticipantModel.fromJson(e as Map<String, dynamic>),
                )
                .toList(),
      ),
      unfinishedTasks: $checkedConvert(
        'unfinished_tasks',
        (v) => (v as num).toInt(),
      ),
      coverImage: $checkedConvert('cover_image', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {
    'startDate': 'start_date',
    'endDate': 'end_date',
    'unfinishedTasks': 'unfinished_tasks',
    'coverImage': 'cover_image',
  },
);

Map<String, dynamic> _$TripModelToJson(TripModel instance) => <String, dynamic>{
  'id': instance.id,
  'status': _$TripStatusEnumMap[instance.status]!,
  'title': instance.title,
  'start_date': instance.startDate,
  'end_date': instance.endDate,
  'participants': instance.participants,
  'unfinished_tasks': instance.unfinishedTasks,
  'cover_image': instance.coverImage,
};

const _$TripStatusEnumMap = {
  TripStatus.proposalSent: 'Proposal Sent',
  TripStatus.pendingApproval: 'Pending Approval',
  TripStatus.readyForTravel: 'Ready for travel',
  TripStatus.unknown: 'unknown',
};
