import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_s/responsive_s.dart';
import 'package:trip_task/core/shared/extension/context_extension.dart';
import 'package:trip_task/features/home/presentation/managers/home_bloc.dart';
import 'package:trip_task/features/home/presentation/widgets/items_list/trip_card/trip_card.dart';

class ItemsListView extends StatelessWidget {
  const ItemsListView({super.key, required this.sizer});

  final Sizer sizer;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = sizer.width;

    int crossAxisCount =
        screenWidth > 1800
            ? 5
            : screenWidth > 1400
            ? 4
            : 1;

    return Expanded(
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.tripsLoading) {
            return Center(
              child: CircularProgressIndicator(color: context.warning),
            );
          }

          if (state.tripsErrorMessage.isNotEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  state.tripsErrorMessage,
                  style: TextStyle(color: Colors.red, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }
          if (state.tripsList.isEmpty) {
            return Center(child: Text('No trips available.'));
          }
          return GridView.builder(
            padding: EdgeInsets.only(bottom: sizer.h(40)),
            shrinkWrap: true,

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
          );
        },
      ),
    );
  }
}
