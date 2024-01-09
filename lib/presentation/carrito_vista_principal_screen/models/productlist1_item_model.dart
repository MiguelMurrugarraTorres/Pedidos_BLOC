import '../../../core/app_export.dart';/// This class is used in the [productlist1_item_widget] screen.
class Productlist1ItemModel {Productlist1ItemModel({this.productImage, this.productName, this.stockCount, this.id, }) { productImage = productImage  ?? ImageConstant.img595414273x84;productName = productName  ?? "Leche Evaporada Entera";stockCount = stockCount  ?? "Stock: 120";id = id  ?? ""; }

String? productImage;

String? productName;

String? stockCount;

String? id;

 }
