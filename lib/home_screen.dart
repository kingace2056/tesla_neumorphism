import 'package:flutter/material.dart';
import 'package:tesla_neumorphism/constants/asset_constants.dart';
import 'package:tesla_neumorphism/constants/color_constants.dart';
import 'package:tesla_neumorphism/widgets/circular_btn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(gradient: ColorConstants.scaffoldBgGrad),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: .start,
                      crossAxisAlignment: .start,
                      children: [
                        Text('Tesla', style: TextStyle(color: Colors.white)),
                        Row(
                          children: [
                            Icon(Icons.battery_0_bar, color: Colors.white),
                            Text(
                              ' 187 km',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),

                    CircularBtn(iconPath: AssetConstants.person),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
