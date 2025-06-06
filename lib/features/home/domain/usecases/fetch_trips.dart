import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:trip_task/core/shared/failure/failure.dart';
import 'package:trip_task/features/home/domain/entities/trip_entity.dart';
import 'package:trip_task/features/home/domain/repositories/trips_repository.dart';

@injectable
class FetchTripsUseCase {
  final TripsRepository repository;

  FetchTripsUseCase(this.repository);

  Future<Either<Failure, List<TripEntity>>> call() => repository.getTrips();
}
