import 'allModels.dart';
class Product {
  String name;
  String brand;
  String category;
  List<Store> availableStores;
  double standardPrice;
  List<String> locations;
  Product({this.name, this.brand, this.category, this.standardPrice, this.locations, this.availableStores});
}
