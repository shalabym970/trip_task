import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class TripParticipantEntity extends Equatable {
  @JsonKey(name: TripParticipantKeys.name)
  final String name;

  @JsonKey(name: TripParticipantKeys.avatarUrl)
  final String avatarUrl;

  const TripParticipantEntity({
    required this.name,
    required this.avatarUrl,
  });

  @override
  List<Object?> get props => [name, avatarUrl];

  TripParticipantEntity copyWith({
    String? name,
    String? avatarUrl,
  }) {
    return TripParticipantEntity(
      name: name ?? this.name,
      avatarUrl: avatarUrl ?? this.avatarUrl,
    );
  }
}

class TripParticipantKeys {
  static const name = 'name';
  static const avatarUrl = 'avatar_url';
}
