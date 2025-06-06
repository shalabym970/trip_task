import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_task/features/home/domain/entities/trip_entity.dart';
import 'package:trip_task/features/home/domain/usecases/fetch_trips.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

@singleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FetchTripsUseCase fetchTripsUseCase;

  HomeBloc(this.fetchTripsUseCase) : super(const HomeState()) {
    on<HomeEvent>(_onEvent);
  }

  Future<void> _onEvent(HomeEvent event, Emitter<HomeState> emit) async {
    await event.map(
      started: (_) async {
        add(const HomeEvent.fetchTrips());
      },
      fetchTrips: (_) async {
        emit(state.copyWith(tripsLoading: true, tripsErrorMessage: ''));
        final result = await fetchTripsUseCase();
        result.fold(
              (failure) => emit(state.copyWith(
              tripsLoading: false, tripsErrorMessage: failure.message)),
              (trips) => emit(state.copyWith(tripsLoading: false, tripsList: trips)),
        );
      },
    );
  }
}
