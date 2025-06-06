// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/cupertino.dart' as _i719;
import 'package:flutter/services.dart' as _i281;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:trip_task/core/shared/models/register_module.dart' as _i565;
import 'package:trip_task/features/home/data/data_source/trips_remote_data_source.dart'
    as _i763;
import 'package:trip_task/features/home/data/repositories/trips_repository_impl.dart'
    as _i912;
import 'package:trip_task/features/home/domain/repositories/trips_repository.dart'
    as _i785;
import 'package:trip_task/features/home/domain/usecases/fetch_trips.dart'
    as _i33;
import 'package:trip_task/features/home/presentation/managers/home_bloc.dart'
    as _i141;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i281.AssetBundle>(() => registerModule.assetBundle);
    gh.factory<_i763.TripsRemoteDataSource>(
      () => _i763.TripsRemoteDataSourceImpl(bundle: gh<_i719.AssetBundle>()),
    );
    gh.factory<_i785.TripsRepository>(
      () => _i912.TripRepositoryImpl(
        remoteDataSource: gh<_i763.TripsRemoteDataSource>(),
      ),
    );
    gh.factory<_i33.FetchTripsUseCase>(
      () => _i33.FetchTripsUseCase(gh<_i785.TripsRepository>()),
    );
    gh.singleton<_i141.HomeBloc>(
      () => _i141.HomeBloc(gh<_i33.FetchTripsUseCase>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i565.RegisterModule {}
