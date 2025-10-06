import 'package:e_commerce/screens/cart/quantity_btm_sheet.dart';
import 'package:e_commerce/widgets/subtitle_text.dart';
import 'package:e_commerce/widgets/title_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FittedBox(
      child: IntrinsicWidth(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: FancyShimmerImage(
                      imageUrl:
                          "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSoo0NvrxEjPjtHxTdaOLH4QEPrqfX-Q0zxC0JEQZS1g6uK0FfAgfGXjAd4J0hiA69bFvVg8gzhDNy__7rldYdROUsmBQxrWh7AYG1HLocvByFylxfwl18Z2k0",
                      height: size.height * 0.15,
                      width: size.width * 0.4,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                width: size.width * 0.6,
                                child: IntrinsicWidth(
                                    child: TitleText(
                                  label: "Title" * 15,
                                  maxlines: 2,
                                ))),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.clear,
                                color: Colors.red,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(IconlyLight.heart),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: size.width * 0.7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SubtitleText(
                            label: "350 \INR",
                            color: Colors.blue,
                          ),
                          OutlinedButton.icon(
                            onPressed: () async {
                              await showModalBottomSheet(
                                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                                  context: context,
                                  builder: (context) {
                                    return const QuantityBtmSheet();
                                  });
                            },
                            icon: Icon(IconlyLight.arrowDown2),
                            label: Text('Qty'),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(width: 1),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// FittedBox(
// child: IntrinsicWidth(
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// ClipRRect(
// borderRadius: BorderRadius.circular(12),
// child: FancyShimmerImage(
// imageUrl:
// "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSoo0NvrxEjPjtHxTdaOLH4QEPrqfX-Q0zxC0JEQZS1g6uK0FfAgfGXjAd4J0hiA69bFvVg8gzhDNy__7rldYdROUsmBQxrWh7AYG1HLocvByFylxfwl18Z2k0",
// height: size.height * 0.15,
// width: size.width * 0.4,
// ),
// ),
// Column(
//
// children: [
// Row(
//
// children: [
// IntrinsicWidth(
// child: SizedBox(
// width: size.width * 0.6,
// child: TitleText(
// label: "Title" * 10,
// maxlines: 2,
// )),
// ),
// Column(
// children: [
// IconButton(
// onPressed: () {},
// icon: Icon(
// Icons.clear,
// color: Colors.red,
// ),
// ),
// IconButton(
// onPressed: () {},
// icon: Icon(IconlyLight.heart),
// ),
// ],
// ),
// ],
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// SubtitleText(
// label: "350 \INR",
// color: Colors.blue,
// ),
//
// OutlinedButton.icon(
// onPressed: () {},
// label: SubtitleText(
// label: "Qty : 6",
// color: Colors.blue,
// ),
// icon: Icon(
// IconlyLight.arrowDown2,
// color: Colors.blue,
// ),
// )
// ],
// )
// ],
// ),
// ],
// ),
// ),
// ),
// );
