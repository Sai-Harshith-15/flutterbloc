// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../home/models/home_product_data_model.dart';
import '../bloc/wishlist_bloc.dart';

class WishlistTileWidget extends StatelessWidget {
  final ProductDataModel productDataModel;
  final WishlistBloc wishlistBloc;
  const WishlistTileWidget({
    Key? key,
    required this.productDataModel,
    required this.wishlistBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: gray),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: /* 200 */ double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                  productDataModel.imageUrl,
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(productDataModel.name),
          Text(productDataModel.description),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Price: \$${productDataModel.price.toString()}",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      wishlistBloc.add(
                        RemoveFromWishlist(productDataModel: productDataModel),
                      );
                    },
                    icon: Icon(
                      Icons.favorite_border,
                    ),
                  ),
                  /*  IconButton(
                    onPressed: () {
                      wishlistBloc.add(RemoveFromWishlist(
                        productDataModel: productDataModel,
                      ));
                    },
                    icon: Icon(
                      Icons.shopping_bag,
                    ),
                  ), */
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
