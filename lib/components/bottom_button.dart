import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

/// A reusable widget for the bottom button in the BMI calculator.
class BottomButton extends StatelessWidget {
  /// Creates a [BottomButton].
  ///
  /// Both [onTap] and [buttonTitle] are required.
  const BottomButton({
    required this.onTap,
    required this.buttonTitle,
    Key? key,
  }) : super(key: key);

  /// Callback function triggered when the button is tapped.
  final VoidCallback onTap;

  /// The text displayed on the button.
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
