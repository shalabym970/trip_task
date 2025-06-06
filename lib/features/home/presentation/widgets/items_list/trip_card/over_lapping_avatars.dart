import 'package:flutter/material.dart';
import 'package:responsive_s/responsive_s.dart';
import 'package:trip_task/core/managers/theme_manager/theme_manager.dart';
import 'package:trip_task/core/shared/extension/context_extension.dart';

class OverlappingAvatars extends StatelessWidget {
  final List<String> imageUrls;
  final double radius;
  final Sizer sizer;

  const OverlappingAvatars({
    super.key,
    required this.imageUrls,
    this.radius = 16,
    required this.sizer,
  });

  @override
  Widget build(BuildContext context) {
    final int maxVisible = 3;
    double overlapOffset = radius * 1.2;
    int visibleCount =
        imageUrls.length > maxVisible ? maxVisible : imageUrls.length;

    return SizedBox(
      width:
          (visibleCount + (imageUrls.length > maxVisible ? 1 : 0)) *
              overlapOffset +
          radius,
      height: radius * 2,
      child: Stack(
        children: [
          for (int i = 0; i < visibleCount; i++)
            Positioned(
              left: i * overlapOffset,
              child: Container(
                width: radius * 2,
                height: radius * 2,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: ClipOval(
                  child: Image.network(
                    imageUrls[i],
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Container(
                        color: Colors.grey[300],
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: sizer.fontSize(12),
                          height: sizer.fontSize(12),
                          child: CircularProgressIndicator(
                            strokeWidth: 1.5,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              context.primary,
                            ),
                          ),
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[800],
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.person,
                          size: sizer.fontSize(16),
                          color: context.white,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          if (imageUrls.length > maxVisible)
            Positioned(
              left: visibleCount * overlapOffset,
              child: Container(
                width: radius * 2,
                height: radius * 2,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.textMain,
                ),
                alignment: Alignment.center,
                child: Text(
                  '+${imageUrls.length - maxVisible}',
                  style: FontManager.tiny.copyWith(color: context.warning),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
