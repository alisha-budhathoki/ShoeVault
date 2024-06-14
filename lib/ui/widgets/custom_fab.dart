import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(16.0), // Adjust border radius as needed
      ),
      color: Colors.black, // Set background color to black
      child: InkWell(
        onTap: onPressed,
        borderRadius:
            BorderRadius.circular(16.0), // Same as the shape border radius
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: child,
        ),
      ),
    );
  }
}
