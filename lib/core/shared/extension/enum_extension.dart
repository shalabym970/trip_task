import 'package:trip_task/core/enums/enums.dart';

extension TripStatusExtension on TripStatus {
  String toNamed() {
    switch (this) {
      case TripStatus.proposalSent:
        return 'Proposal Sent';
      case TripStatus.pendingApproval:
        return 'Pending Approval';
      case TripStatus.readyForTravel:
        return 'Ready for travel';
      case TripStatus.unknown:
        return 'Unknown';
    }
  }

  static TripStatus? fromString(String value) {
    switch (value) {
      case 'Proposal Sent':
        return TripStatus.proposalSent;
      case 'Pending Approval':
        return TripStatus.pendingApproval;
      case 'Ready for travel':
        return TripStatus.readyForTravel;
      default:
        return null;
    }
  }
}