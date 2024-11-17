import 'package:flutter/material.dart';

/// A reusable card widget that supports a custom child, background color, and onTap behavior.
class ReusableCard extends StatelessWidget {
  /// Creates a [ReusableCard].
  ///
  /// [colour], [cardChild], and [onPress] are required parameters.
  const ReusableCard({
    required this.colour,
    required this.cardChild,
    required this.onPress,
    Key? key,
  }) : super(key: key);

  /// The background color of the card.
  final Color colour;

  /// The child widget displayed inside the card.
  final Widget cardChild;

  /// The callback function triggered when the card is tapped.
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
