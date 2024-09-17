import 'package:flutter/material.dart';
import 'package:flutterbloc/constants/colors.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: white),
        backgroundColor: royalBlue,
        centerTitle: true,
        title: Text(
          'Cart Screen',
          style: TextStyle(color: white),
        ),
      ),
    );
  }
}
