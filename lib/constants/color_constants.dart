import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColorConstants {
  static const Color homeGradTop = Color(0xFF2A2D32);
  static const Color homeGradBtm = Color(0xFF131313);
  static const Gradient scaffoldBgGrad = LinearGradient(
    colors: [homeGradTop, homeGradBtm],
    stops: [0, 0.99],
    begin: AlignmentGeometry.topCenter,
    end: AlignmentGeometry.bottomCenter,
  );
  static const Gradient btnRadialGrad = RadialGradient(
    colors: [Color(0xFF545659), Color(0xFF232629)],
    stops: [0, 1],
  );
  static Color labelDarkSec = Color(0xFFEBEBF5);
  static Gradient btnStrokeGrad = LinearGradient(
    colors: [Colors.black.withValues(alpha: 0.55), Colors.white],
    stops: [0, 0.99],
    begin: AlignmentGeometry.topLeft,
    end: AlignmentGeometry.bottomRight,
  );
  static Gradient btnGradLayer1 = LinearGradient(
    colors: [Color(0xFF5D6167), Color(0xFF5D6167)],
  );
}
