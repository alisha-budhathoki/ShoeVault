import 'package:flutter/material.dart';
import 'package:shoe_vault/core/constants/constants_index.dart';
import 'package:shoe_vault/ui/ui.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: AppBar(
        title: Text(
          'Discover',
          style: TextStyles.h7.bold.withColor(Palette.dark.shade5),
        ),
        actions: [
          IconButton(
            icon: const AdaptiveIcon(
              imageUrl: AppIcons.cart,
              height: 28.0,
            ),
            onPressed: () {
              // Handle cart icon tap
            },
          ),
          const SizedBox(width: 16.0),
        ],
      ),
    );
  }
}
