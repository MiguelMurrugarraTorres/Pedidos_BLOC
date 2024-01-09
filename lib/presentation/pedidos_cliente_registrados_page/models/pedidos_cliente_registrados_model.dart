// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'orderdetailssection_item_model.dart';/// This class defines the variables used in the [pedidos_cliente_registrados_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PedidosClienteRegistradosModel extends Equatable {PedidosClienteRegistradosModel({this.orderdetailssectionItemList = const []}) {  }

List<OrderdetailssectionItemModel> orderdetailssectionItemList;

PedidosClienteRegistradosModel copyWith({List<OrderdetailssectionItemModel>? orderdetailssectionItemList}) { return PedidosClienteRegistradosModel(
orderdetailssectionItemList : orderdetailssectionItemList ?? this.orderdetailssectionItemList,
); } 
@override List<Object?> get props => [orderdetailssectionItemList];
 }
