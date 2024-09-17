part of 'wishlist_bloc.dart';

//simple class

abstract class WishlistState {}

//abstract class

abstract class WishlistActionState extends WishlistState {}

class WishlistInitial extends WishlistState {}

class WishListSuccessState extends WishlistState {
  final List<ProductDataModel> wishlist;

  WishListSuccessState({required this.wishlist});
}

class WishListRemoveActionState extends WishlistActionState {
  final List<ProductDataModel> wishList;

  WishListRemoveActionState({required this.wishList});
}
