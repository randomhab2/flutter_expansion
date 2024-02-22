import 'package:flutter/material.dart';
import 'package:flutter_expansion/src/constants/sizes.dart';

class Indicator extends StatelessWidget {
  const Indicator({super.key});

  @override
  Widget build(BuildContext context) {
    const double containerSize = 10;
    const double spacer = 3;

    return Positioned(
      left: 0,
      top: 0,
      bottom: 0,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ///line before indicator
          Container(
            height: Sizes.p24 - spacer,
            width: 2,
            color: Colors.grey,
          ),

          /// indicator
          Positioned(
            left: -(containerSize / 2) + 1,
            child: Container(
              margin: const EdgeInsets.only(top: Sizes.p24),
              width: containerSize,
              height: containerSize,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),

          ///horizontal line
          Positioned(
            top: (Sizes.p24 + (containerSize / 2)) - 1,
            left: (containerSize / 2) + spacer,
            child: Container(
              height: 2,
              width: 8,
              color: Colors.grey,
            ),
          ),

          ///line after indicator
          Positioned(
            top: Sizes.p24 + containerSize + spacer,
            bottom: 0,
            child: Container(
              height: Sizes.p24,
              width: 2,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
