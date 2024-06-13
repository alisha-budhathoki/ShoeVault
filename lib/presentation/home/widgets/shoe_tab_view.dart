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
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.75,
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
              Expanded(
                child: _buildImage(shoe),
              ),
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
            style: TextStyles.bodyText1.regular,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          const SizedBox(height: 4.0),
          Row(
            children: [
              _buildRatingStars(shoe.rating),
              const SizedBox(width: 8.0),
              Text(
                '${shoe.rating}',
                style: TextStyles.bodyText2.bold,
              ),
            ],
          ),
          const SizedBox(width: 8.0),
          Text(
            '(${shoe.reviews} Reviews)',
            style: TextStyles.bodyText2.withColor(Palette.textDisabled.shade1),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          const SizedBox(height: 4.0),
          Text(
            '\$${shoe.price}',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyles.h3.semibold,
          ),
        ],
      ),
    );
  }

  Widget _buildRatingStars(double rating) {
    final stars = List<Widget>.generate(5, (index) {
      return Icon(
        index < rating ? Icons.star : Icons.star_border,
        color: Colors.yellow,
        size: 16.0,
      );
    });
    return Row(children: stars);
  }

  Widget _buildImage(ShoeViewModel shoe) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(28.0),
      child: Container(
        color: Palette.textDisabled.shade1,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 10.0,
              left: 10.0,
              child: AdaptiveImage(
                imageUrl: shoe.brandLogo,
                height: 20.0,
                width: 20.0,
                fit: BoxFit.fill,
              ),
            ),
            const AdaptiveImage(
              imageUrl: AppImages.shoe,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
