import 'package:e_commerce/screens/cart/bottom_checkout.dart';
import 'package:e_commerce/screens/cart/cart_widget.dart';
import 'package:e_commerce/services/assets_manager.dart';
import 'package:e_commerce/widgets/empty_bag_widget.dart';
import 'package:e_commerce/widgets/title_text.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  final bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return isEmpty ? Scaffold(
        body: EmptyBagWidget(
            assetsImage: AssetsManager.shoppingBasket,
            titletext: "Whoops",
            subtitletext1: "Your cart is empty!",
            subtitletext2:
                "Looks like your cart is empty add something and make me happy!",
            buttontext: "Shop now",
            function: () {})) : Scaffold(
      appBar: AppBar(

        leading: Padding(
            padding:const EdgeInsets.all(8.0),

            child: Image.asset(AssetsManager.shoppingCart)),
        title: TitleText(label: "Cart (6)"),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever_rounded))
      ],
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index){

        return CartWidget();
      }),
      bottomSheet: BottomCheckout(),
    );
  }
}
