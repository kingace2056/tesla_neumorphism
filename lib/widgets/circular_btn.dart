import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tesla_neumorphism/constants/color_constants.dart';

class CircularBtn extends StatelessWidget {
  final String iconPath;
  final double? width;
  final double height;
  const CircularBtn({
    super.key,
    required this.iconPath,
    this.width,
    this.height = 22,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: .none,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.white.withValues(alpha: 0.2), blurRadius: 30),
        ],
      ),
      child: Stack(
        alignment: .center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Center(
              child: Container(
                alignment: .center,

                decoration: BoxDecoration(
                  gradient: ColorConstants.btnStrokeGrad,
                ),
                child: Container(
                  alignment: .center,
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent, width: 1.5),
                    shape: BoxShape.circle,
                    gradient: ColorConstants.btnRadialGrad.withOpacity(.7),
                  ),
                  child: SvgPicture.asset(
                    iconPath,
                    height: height,
                    width: width,
                    colorFilter: ColorFilter.mode(
                      ColorConstants.labelDarkSec,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(tileMode: TileMode.mirror),
            child: Container(
              width: width ?? 22 * 2,
              decoration: BoxDecoration(
                shape: .circle,
                gradient: ColorConstants.btnRadialGrad.withOpacity(0.1),
              ),
            ),
          ),
          Container(
            width: width ?? 22 * 3,
            decoration: BoxDecoration(
              shape: .circle,
              gradient: ColorConstants.btnGradLayer1,
            ),
          ),
        ],
      ),
    );
  }
}
