part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool tripsLoading,
    @Default([]) List<TripEntity> tripsList,
    @Default('') String tripsErrorMessage,
  }) = _HomeState;
}
