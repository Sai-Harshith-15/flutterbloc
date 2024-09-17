part of 'home_bloc.dart';

abstract class HomeState {}

//simple state that build my ui and action state

abstract class HomeActionState extends HomeState {}

class HomeInitial extends HomeState {}

//simple state

//when the app open it will show this state.

class HomeLoadingState extends HomeState {}

//after loading it will show the success state

class HomeLoadedSuccessState extends HomeState {
  final List<ProductDataModel> products;
  HomeLoadedSuccessState({
    required this.products,
  });
}

//error

class HomeErrorState extends HomeState {}

//action state

class HomeNavigateToWishlistPageActionState extends HomeActionState {}

class HomeNavigateToCartPageActionState extends HomeActionState {}

class HomeProductItemWishlistedActionState extends HomeActionState {}

class HomeProductItemsCartActionState extends HomeActionState {}
