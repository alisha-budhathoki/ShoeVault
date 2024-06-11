import 'package:flutter/material.dart';
import 'package:shoe_vault/core/constants/constants_index.dart';
import 'package:shoe_vault/ui/ui.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Discover'),
      titleSpacing: 16.0,
      actions: [
        const SizedBox(width: 16.0),
        _buildCartIcon(),
      ],
    );
  }

  Widget _buildCartIcon() {
    return ScaleTapDetector(
      onTap: () => {},
      child: const ScaleAnimation(
        child: AdaptiveIcon(
          imageUrl: AppIcons.cart,
          height: 30.0,
        ),
      ),
    );
  }
}
