import 'package:e_commerce/services/assets_manager.dart';
import 'package:e_commerce/widgets/empty_bag_widget.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: EmptyBagWidget(
            assetsImage: AssetsManager.shoppingBasket,
            titletext: "Whoops",
            subtitletext1: "Your cart is empty!",
            subtitletext2:
                "Looks like your cart is empty add something and make me happy!",
            buttontext: "Shop now",
            function: () {}));
  }
}
