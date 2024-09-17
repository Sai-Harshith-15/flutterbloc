import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/cart_items.dart';
import '../../home/models/home_product_data_model.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    /*  on<CartEvent>(
      (event, emit) {},
    ); */
    on<CartInitialEvent>(cartInitialEvent);
    on<CartRemoveFromCartEvent>(cartRemoveFromCartEvent);
  }

  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccessState(cartItems: cartItems));
  }

  FutureOr<void> cartRemoveFromCartEvent(
      CartRemoveFromCartEvent event, Emitter<CartState> emit) {
    //get your cart items

    //check is your product model there in your cart items- true

    //run a function to remove that product model from cart items

    //and emit cartItemRemoveState

    cartItems.remove(event.productDataModel);
    emit(CartSuccessState(cartItems: cartItems));

    emit(CartRemoveActionState(cartItems: cartItems));
  }
}
