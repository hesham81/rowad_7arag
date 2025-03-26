import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background blue shape
          Positioned.fill(
            child: SvgPicture.asset(
              "assets/images/Rectangle 54.svg", // Ensure this is the correct path for the blue shape
              fit: BoxFit.cover,
            ),
          ),

          // White logo and text
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo (SVG or Image)
                SvgPicture.asset(
                  "assets/images/logo.svg", // Replace with the path to your logo SVG
                  width: 200, // Adjust size as needed
                  height: 200,
                ),

                // Text below the logo
                const SizedBox(height: 16),
                const Text(
                  'ROWAD HARAG',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Green triangle at the bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Transform.rotate(
              angle: -3.14 / 4, // Rotate 45 degrees counterclockwise
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100, // Adjust height as needed
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}