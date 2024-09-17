import 'dart:async';
import 'package:bloc/bloc.dart';
import '../../../data/wishlist_items.dart';
import '../../home/models/home_product_data_model.dart';
part 'wishlist_state.dart';
part 'wishlist_event.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<WishlistInitialEvent>(wishlistInitialEvent);
    on<RemoveFromWishlist>(removeFromWishlist);
  }

  FutureOr<void> wishlistInitialEvent(
      WishlistInitialEvent event, Emitter<WishlistState> emit) {
    emit(WishListSuccessState(wishlist: wishlistItems));
  }

  FutureOr<void> removeFromWishlist(
      RemoveFromWishlist event, Emitter<WishlistState> emit) {
    wishlistItems.remove(event.productDataModel);
    emit(WishListSuccessState(wishlist: wishlistItems));
    emit(WishListRemoveActionState(wishList: wishlistItems));
  }
}
