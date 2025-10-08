import 'package:e_commerce/models/categories_models.dart';
import 'package:e_commerce/services/assets_manager.dart';

class AppConstants {
  static String imageUrl =
      "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSoo0NvrxEjPjtHxTdaOLH4QEPrqfX-Q0zxC0JEQZS1g6uK0FfAgfGXjAd4J0hiA69bFvVg8gzhDNy__7rldYdROUsmBQxrWh7AYG1HLocvByFylxfwl18Z2k0";
  static List<String> bannerImages = [
    AssetsManager.banner1,
    AssetsManager.banner2
  ];
  static List<CategoriesModel> categoryList = [
    CategoriesModel(
        id: "mobiles", name: "Mobiles", image: AssetsManager.mobiles),
    CategoriesModel(id: "laptop", name: "Laptop", image: AssetsManager.pc),
    CategoriesModel(id: "watch", name: "Watch", image: AssetsManager.watch),
    CategoriesModel(
        id: "cosmetics", name: "Cosmetics", image: AssetsManager.cosmetics),
    CategoriesModel(
        id: "electronics",
        name: "Electronics",
        image: AssetsManager.electronics),
    CategoriesModel(
        id: "shoes",
        name: "Shoes",
        image: AssetsManager.shoes),
    CategoriesModel(
        id: "books",
        name: "Books",
        image: AssetsManager.book),
    CategoriesModel(
        id: "cloths",
        name: "Cloths",
        image: AssetsManager.fashion),
  ];
}
