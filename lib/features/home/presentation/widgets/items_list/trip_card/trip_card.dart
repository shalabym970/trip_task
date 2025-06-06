import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_s/responsive_s.dart';
import 'package:trip_task/config/design/frame_constant.dart';
import 'package:trip_task/core/managers/assets_managers/assets.gen.dart';
import 'package:trip_task/core/managers/theme_manager/color_manager/dynamic_colors.dart';
import 'package:trip_task/core/managers/theme_manager/theme_manager.dart';
import 'package:trip_task/core/shared/common_widgets/spacer_widgets/spaceing.dart';
import 'package:trip_task/core/shared/extension/context_extension.dart';
import 'package:trip_task/features/home/domain/entities/trip_entity.dart';
import 'package:trip_task/features/home/presentation/widgets/items_list/trip_card/status_widget.dart';
import 'package:trip_task/generated/keys.g.dart';
import 'over_lapping_avatars.dart';

class TripCard extends StatelessWidget {
  final TripEntity trip;
  final Sizer sizer;

  const TripCard({super.key, required this.sizer, required this.trip});

  @override
  Widget build(BuildContext context) {
    final isMobile = sizer.width <= AppFrameConstant.mobile.width;

    return Container(
      height: isMobile ? sizer.h(380) : sizer.h(310),
      decoration: BoxDecoration(
        color: DynamicColors.colors.background,
        borderRadius: BorderRadius.circular(sizer.radius(15)),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 4),
        ],
      ),
      child: Stack(
        children: [
          Stack(
            children: [
              AspectRatio(
                aspectRatio: isMobile ? 343 / 150 : 243 / 183,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(sizer.radius(15)),
                      ),
                      child:
                          trip.coverImage.startsWith('http')
                              ? Image.network(
                                trip.coverImage,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                                loadingBuilder: (
                                  context,
                                  child,
                                  loadingProgress,
                                ) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                    child: CircularProgressIndicator(
                                      color: context.warning,
                                    ),
                                  );
                                },
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    color: Colors.grey[300],
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.broken_image,
                                      color: Colors.red,
                                      size: sizer.w(40),
                                    ),
                                  );
                                },
                              )
                              : Image.asset(
                                trip.coverImage,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    color: context.gray,
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.broken_image,
                                      color: context.warning,
                                      size: sizer.w(40),
                                    ),
                                  );
                                },
                              ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: sizer.paddingSymmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        child: Container(
                          height: sizer.h(32),
                          width: sizer.w(32),
                          decoration: BoxDecoration(
                            color: context.black60,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              AssetsManager.icons.moreHorizontal.path,
                              width: sizer.w(20),
                              height: sizer.h(20),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                height: isMobile ? sizer.h(150) : sizer.h(183),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        DynamicColors.colors.background.withOpacity(1),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          Positioned.fill(
            top: isMobile ? sizer.h(160) : sizer.h(183),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                sizer.w(15), // left
                sizer.h(24), // top
                sizer.w(15), // right
                sizer.h(24), // bottom
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StatusWidget(sizer: sizer, status: trip.status),
                  DynamicSpacing.of(sizer).largeVerticalSpace(),
                  Text(trip.title, style: FontManager.interBodyMedium),
                  DynamicSpacing.of(sizer).midSmallVerticalSpace(),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AssetsManager.icons.calendar.path,
                        width: sizer.h(16),
                        height: sizer.h(16),
                      ),
                      DynamicSpacing.of(sizer).midSmallHorizontalSpace(),
                      Flexible(
                        child: Text(
                          _formatTripDate(trip.startDate, trip.endDate),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                          style: FontManager.interbodySmall.copyWith(
                            color: context.gray,
                          ),
                        ),
                      ),
                    ],
                  ),

                  DynamicSpacing.of(sizer).semiLargeVerticalSpace(),
                  DynamicDivider.of(sizer).greyDivider05(),
                  DynamicSpacing.of(sizer).semiLargeVerticalSpace(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OverlappingAvatars(
                        imageUrls: List<String>.from(
                          trip.participants.map((p) => p.avatarUrl),
                        ),
                        sizer: sizer,
                      ),
                      Text(
                        '${trip.unfinishedTasks} ${LocaleKeys.unfinishedTasks.tr()}',
                        style: FontManager.interTinyBody.copyWith(
                          color: context.gray,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatTripDate(String start, String end) {
    try {
      final DateFormat inputFormat = DateFormat('dd-MM-yyyy');
      final DateTime startDate = inputFormat.parse(start);
      final DateTime endDate = inputFormat.parse(end);

      final nights = endDate.difference(startDate).inDays;

      final formattedStart = DateFormat('MMM d').format(startDate);
      final formattedEnd = DateFormat('d, yyyy').format(endDate);

      return "$nights Nights ($formattedStart - $formattedEnd)";
    } catch (_) {
      return ''; // or fallback string
    }
  }
}
