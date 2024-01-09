import '../../../core/app_export.dart';/// This class is used in the [productlist_item_widget] screen.
class ProductlistItemModel {ProductlistItemModel({this.beverageImage, this.beverageText, this.dairyImage, this.dairyText, this.vegetableImage, this.vegetableText, this.id, }) { beverageImage = beverageImage  ?? ImageConstant.imgRectangle2775;beverageText = beverageText  ?? "Bebidas";dairyImage = dairyImage  ?? ImageConstant.imgRectangle2776;dairyText = dairyText  ?? "Lacteos";vegetableImage = vegetableImage  ?? ImageConstant.imgRectangle2777;vegetableText = vegetableText  ?? "Verduras";id = id  ?? ""; }

String? beverageImage;

String? beverageText;

String? dairyImage;

String? dairyText;

String? vegetableImage;

String? vegetableText;

String? id;

 }
