import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_s/responsive_s.dart';
import 'package:trip_task/core/shared/common_widgets/empty_message_error.dart';
import 'package:trip_task/core/shared/common_widgets/error_message_widget.dart';
import 'package:trip_task/core/shared/common_widgets/loading_indicator.dart';
import 'package:trip_task/features/home/presentation/managers/home_bloc.dart';
import 'package:trip_task/features/home/presentation/widgets/items_list/trip_card/trip_card.dart';

class ItemsListView extends StatelessWidget {
  const ItemsListView({super.key, required this.sizer});

  final Sizer sizer;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = sizer.width;
    final isMobile = screenWidth <= 600;

    int crossAxisCount =
        screenWidth > 1800
            ? 5
            : screenWidth > 1400
            ? 4
            : 2;

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.tripsLoading) {
          return LoadingIndicator(sizer: sizer);
        }

        if (state.tripsErrorMessage.isNotEmpty) {
          return ErrorMessageWidget(
            sizer: sizer,
            message: state.tripsErrorMessage,
          );
        }
        if (state.tripsList.isEmpty) {
          return EmptyMessageWidget(sizer: sizer);
        }
        return Expanded(
          child:
              isMobile
                  ?RefreshIndicator(
                  onRefresh: () async {
                    context.read<HomeBloc>().add(HomeEvent.fetchTrips());
                  },
                  child:  ListView.separated(
                    padding: EdgeInsets.only(bottom: sizer.h(40)),
                    itemCount: state.tripsList.length,
                    separatorBuilder: (_, __) => SizedBox(height: sizer.h(20)),
                    itemBuilder: (context, index) {
                      final trip = state.tripsList[index];
                      return TripCard(trip: trip, sizer: sizer);
                    },
                  ))
                  : GridView.builder(
                    padding: EdgeInsets.only(bottom: sizer.h(40)),
                    physics: const AlwaysScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: sizer.w(16),
                      mainAxisSpacing: sizer.h(20),
                      //childAspectRatio: 243 / 322,
                      childAspectRatio: 0.75,
                    ),
                    itemCount: state.tripsList.length,
                    itemBuilder: (context, index) {
                      final trip = state.tripsList[index];
                      return TripCard(trip: trip, sizer: sizer);
                    },
                  ),
        );
      },
    );
  }
}
