part of 'wishlist_bloc.dart';

abstract class WishlistEvent {}

class WishlistInitialEvent extends WishlistEvent {}

class RemoveFromWishlist extends WishlistEvent {
  final ProductDataModel productDataModel;
  RemoveFromWishlist({required this.productDataModel});
}
