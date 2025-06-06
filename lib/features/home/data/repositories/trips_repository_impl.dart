import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_task/core/shared/failure/failure.dart';
import 'package:trip_task/features/home/data/data_source/trips_remote_data_source.dart';
import 'package:trip_task/features/home/domain/entities/trip_entity.dart';
import 'package:trip_task/features/home/domain/repositories/trips_repository.dart';

@Injectable(as: TripsRepository)
class TripRepositoryImpl implements TripsRepository {
  final TripsRemoteDataSource remoteDataSource;

  TripRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<TripEntity>>> getTrips() =>
      remoteDataSource.fetchTrips();
}
