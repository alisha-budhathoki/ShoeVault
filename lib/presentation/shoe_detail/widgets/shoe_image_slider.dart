import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_vault/presentation/shoe_detail/cubit/shoe_detail_cubit.dart';
import 'package:shoe_vault/presentation/shoe_detail/view_models/shoe_detail_VM.dart';
import 'package:shoe_vault/ui/ui.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShoeImageSlider extends StatelessWidget {
  const ShoeImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return BlocBuilder<ShoeDetailCubit, ShoeDetailState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: SizedBox.new,
          loaded: (shoe) {
            return Stack(
              children: [
                _buildImage(controller, shoe),
                _buildPageIndicator(controller, shoe),
                _buildColorSwitcher(shoe, context),
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildColorSwitcher(ShoeDetailVM shoe, BuildContext context) {
    return Positioned(
      bottom: 16.0,
      right: 4.0,
      child: _buildColorOptions(
        colors: shoe.colors,
        selectedColor: shoe.selectedColor ?? '',
        context: context,
      ),
    );
  }

  Widget _buildImage(PageController controller, ShoeDetailVM shoe) {
    return SizedBox(
      height: 250.0,
      child: PageView.builder(
        controller: controller,
        itemCount: shoe.productImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: AdaptiveImage(
                imageUrl: shoe.productImages[index],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPageIndicator(PageController controller, ShoeDetailVM shoe) {
    return Positioned(
      bottom: 8.0,
      left: 0.0,
      right: 0.0,
      child: Center(
        child: SmoothPageIndicator(
          controller: controller,
          count: shoe.productImages.length,
          effect: WormEffect(
            dotHeight: 8.0,
            dotWidth: 8.0,
            activeDotColor: Palette.dark.shade5,
          ),
        ),
      ),
    );
  }

  Widget _buildColorOptions({
    required List<String> colors,
    required String selectedColor,
    required BuildContext context,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: colors.map((color) {
        final isSelected = color == selectedColor;
        return GestureDetector(
          onTap: () {
            context.read<ShoeDetailCubit>().selectColor(color);
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
              color: hexToColor(color),
              shape: BoxShape.circle,
              border: Border.all(color: Palette.textDisabled.shade1),
            ),
            child: isSelected
                ? const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 16.0,
                  )
                : null,
          ),
        );
      }).toList(),
    );
  }

  Color hexToColor(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
