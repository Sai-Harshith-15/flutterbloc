import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/features/wishlist/bloc/wishlist_bloc.dart';
import 'package:flutterbloc/features/wishlist/ui/wishlist_tile_widget.dart';
import '../../../constants/colors.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  final WishlistBloc wishlistBloc = WishlistBloc();

  @override
  void initState() {
    super.initState();
    wishlistBloc.add(WishlistInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: white),
        backgroundColor: royalBlue,
        centerTitle: true,
        title: Text(
          'Wishlist Screen',
          style: TextStyle(color: white),
        ),
      ),
      body: BlocConsumer(
        bloc: wishlistBloc,
        listener: (context, state) {
          if (state is WishListRemoveActionState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: red,
                behavior: SnackBarBehavior.floating,
                content: Text(
                  'Product is Removed from the Wishlist',
                  style: TextStyle(
                    color: white,
                  ),
                ),
              ),
            );
          }
        },
        listenWhen: (previous, current) => current is WishlistActionState,
        buildWhen: (previous, current) => current is! WishListRemoveActionState,
        builder: (context, state) {
          switch (state.runtimeType) {
            case WishListSuccessState:
              final successState = state as WishListSuccessState;
              return ListView.builder(
                itemCount: state.wishlist.length,
                itemBuilder: (context, index) {
                  return WishlistTileWidget(
                      productDataModel: successState.wishlist[index],
                      wishlistBloc: wishlistBloc);
                },
              );

            default:
              return Container();
          }
        },
      ),
    );
  }
}
