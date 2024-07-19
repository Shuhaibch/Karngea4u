import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/commen/widgets/clip/curver_clip.dart';

class SpashScreen extends StatelessWidget {
  const SpashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              // top: size.height * .4,
              // left: 0,
              child: Opacity(
                opacity: .5,
                child: ClipPath(
                  clipper: MyCustomClipper(),
                  child: Container(
                    color: Colors.amber,
                    // height: size.height * .2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
