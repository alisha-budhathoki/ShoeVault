import 'package:flutter/material.dart';
import 'package:shoe_vault/core/constants/constants_index.dart';
import 'package:shoe_vault/presentation/home/view_models/shoe_view_model.dart';
import 'package:shoe_vault/ui/ui.dart';

class ShoeTabView extends StatefulWidget {
  const ShoeTabView({super.key, required this.shoes});

  final List<ShoeViewModel> shoes;

  @override
  ShoeTabViewState createState() => ShoeTabViewState();
}

class ShoeTabViewState extends State<ShoeTabView>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio:
            0.75, // Adjusted aspect ratio to provide more vertical space
      ),
      itemCount: widget.shoes.length,
      itemBuilder: (context, index) {
        final shoe = widget.shoes[index];
        return InkWell(
          onTap: () {
            // Handle shoe tap
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildImage(shoe),
              _buildProductDetail(shoe),
            ],
          ),
        );
      },
    );
  }

  Widget _buildProductDetail(ShoeViewModel shoe) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            shoe.name,
            style: TextStyles.bodyText1.bold,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          const SizedBox(height: 4.0),
          Text(
            'Rating: ${shoe.rating}',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          Text(
            '\$${shoe.price}',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyles.h3.regular,
          ),
        ],
      ),
    );
  }

  Widget _buildImage(ShoeViewModel shoe) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(28.0),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: AdaptiveImage(
              imageUrl: shoe.brangLogo,
              height: 20.0,
              width: 20.0,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 100.0,
            child: AdaptiveImage(
              imageUrl: AppImages.shoe,
            ),
          ),
        ],
      ),
    );
  }
}
