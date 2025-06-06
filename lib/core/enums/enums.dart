import 'package:freezed_annotation/freezed_annotation.dart';

enum TripStatus {
  @JsonValue('Proposal Sent')
  proposalSent,
  @JsonValue('Pending Approval')
  pendingApproval,
  @JsonValue('Ready for travel')
  readyForTravel,
  @JsonValue('unknown')
  unknown,

}


