import 'package:flutter/material.dart';
import 'package:responsive_s/responsive_s.dart';
import 'package:trip_task/core/shared/extension/context_extension.dart';
import '../../managers/theme_manager/color_manager/dynamic_colors.dart';

class DialogTitle extends StatelessWidget {
  final String title;
  final TextStyle? style;
  final Sizer sizer;

  const DialogTitle({
    super.key,
    required this.title,
    this.style,
    required this.sizer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: sizer.w(16),
              height: sizer.h(32),
              decoration: BoxDecoration(
                color: context.warning,
                borderRadius: BorderRadius.circular(sizer.radius(5)),
              ),
            ),
            SizedBox(width: sizer.w(10)),
            Text(
              title,
              style:
                  style ??
                  Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
        Divider(color: (DynamicColors.colors.textMain), height: sizer.h(10)),
      ],
    );
  }
}
