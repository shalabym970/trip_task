import 'package:dartz/dartz.dart';
import 'package:trip_task/core/shared/failure/failure.dart';
import 'package:trip_task/features/home/domain/entities/trip_entity.dart';


abstract class TripsRepository {
  Future<Either<Failure, List<TripEntity>>> getTrips();
}
