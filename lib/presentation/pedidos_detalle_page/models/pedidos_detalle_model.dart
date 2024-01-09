// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productlist_item_model.dart';/// This class defines the variables used in the [pedidos_detalle_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PedidosDetalleModel extends Equatable {PedidosDetalleModel({this.productlistItemList = const []}) {  }

List<ProductlistItemModel> productlistItemList;

PedidosDetalleModel copyWith({List<ProductlistItemModel>? productlistItemList}) { return PedidosDetalleModel(
productlistItemList : productlistItemList ?? this.productlistItemList,
); } 
@override List<Object?> get props => [productlistItemList];
 }
