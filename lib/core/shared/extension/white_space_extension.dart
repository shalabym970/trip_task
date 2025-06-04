import 'package:flutter/material.dart';

/// use this extension in order to add white space
/// [hSpace] for horizontal space
/// [vSpace] for vertical space
/// make sure to use this extension only with Responsive package
/// example:
/// use this
/// sizer.h(20).vSpace
/// instead of
/// SizedBox(
/// height: sizer.h(20),
/// )
extension WhiteSpaceExtension on double {
  Widget get hSpace => SizedBox(width: this);
  Widget get vSpace => SizedBox(height: this);
}
