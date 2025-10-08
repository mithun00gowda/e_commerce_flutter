import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:e_commerce/widgets/product/product_widget.dart';
import 'package:flutter/material.dart';

import '../services/assets_manager.dart';
import '../widgets/title_text.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController searchController;
  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(

          leading: Padding(
              padding:const EdgeInsets.all(8.0),

              child: Image.asset(AssetsManager.shoppingCart)),
          title: TitleText(label: "Search Product"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
              TextField(
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          searchController.clear();
                          FocusScope.of(context).unfocus();
                        });
                      },
                      child: Icon(Icons.clear,color: Colors.red,))
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: DynamicHeightGridView(
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    builder: (context,index){

                  return ProductWidget();
                }, itemCount: 200, crossAxisCount: 2),
              )
            ],
          ),
        ),
      ),
    );
  }
}
