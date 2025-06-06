import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_task/core/shared/failure/failure.dart';
import 'package:trip_task/features/home/data/models/trip_model.dart';
import 'package:trip_task/features/home/domain/entities/trip_entity.dart';
import 'package:trip_task/generated/keys.g.dart';

abstract class TripsRemoteDataSource {
  Future<Either<Failure, List<TripEntity>>> fetchTrips();
}

@Injectable(as: TripsRemoteDataSource)
class TripsRemoteDataSourceImpl implements TripsRemoteDataSource {
  final AssetBundle bundle;
  TripsRemoteDataSourceImpl({required this.bundle});

  @override
  Future<Either<Failure, List<TripEntity>>> fetchTrips() async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      final data = await bundle.loadString('assets/mock_data/trips_mock.json');
      final Map<String, dynamic> json = jsonDecode(data);
      final List<dynamic> list = json['trips'];
      final trips = list.map((e) => TripModel.fromJson(e)).toList();
      return Right(trips);
    } catch (e) {
      return Left(Failure(message: e.toString(), title: LocaleKeys.unknownError.tr()));
    }
  }
}
