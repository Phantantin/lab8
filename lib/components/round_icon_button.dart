import 'package:flutter/material.dart';

/// A circular button widget with an icon, typically used for actions.
class RoundIconButton extends StatelessWidget {
  /// Creates a [RoundIconButton].
  ///
  /// [icon] and [onPressed] are required parameters.
  const RoundIconButton({
    required this.icon,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  /// The icon displayed inside the button.
  final IconData icon;

  /// The callback function triggered when the button is pressed.
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0, // No shadow for the button
      child: Icon(icon), // Icon to display
      onPressed: onPressed, // Callback function
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ), // Size of the button
      shape: const CircleBorder(), // Circular shape
      fillColor: const Color(0xFF4C4F5E), // Background color
    );
  }
}
