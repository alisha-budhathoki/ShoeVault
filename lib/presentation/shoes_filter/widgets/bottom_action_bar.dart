import 'package:flutter/material.dart';
import 'package:shoe_vault/ui/ui.dart';

class BottomActionBar extends StatelessWidget {
  const BottomActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return FooterButtons(
      buttons: [
        SecondaryButton(
          labelText: 'Reset',
          onPressed: () {},
          borderRadius: 32.0,
          size: ButtonSize.large,
        ),
        PrimaryButton(
          labelText: 'Apply',
          onPressed: () {},
          borderRadius: 32.0,
          size: ButtonSize.large,
        ),
      ],
    );
  }
}
