import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
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
    );
  }
}
