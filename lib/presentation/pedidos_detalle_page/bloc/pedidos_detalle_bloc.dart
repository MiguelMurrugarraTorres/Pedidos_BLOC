import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productlist_item_model.dart';
import 'package:pedidos/presentation/pedidos_detalle_page/models/pedidos_detalle_model.dart';
part 'pedidos_detalle_event.dart';
part 'pedidos_detalle_state.dart';

/// A bloc that manages the state of a PedidosDetalle according to the event that is dispatched to it.
class PedidosDetalleBloc
    extends Bloc<PedidosDetalleEvent, PedidosDetalleState> {
  PedidosDetalleBloc(PedidosDetalleState initialState) : super(initialState) {
    on<PedidosDetalleInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PedidosDetalleInitialEvent event,
    Emitter<PedidosDetalleState> emit,
  ) async {
    emit(state.copyWith(
        pedidosDetalleModelObj: state.pedidosDetalleModelObj?.copyWith(
      productlistItemList: fillProductlistItemList(),
    )));
  }

  List<ProductlistItemModel> fillProductlistItemList() {
    return [
      ProductlistItemModel(
          beverageImage: ImageConstant.imgRectangle2775,
          beverageText: "Bebidas",
          dairyImage: ImageConstant.imgRectangle2776,
          dairyText: "Lacteos",
          vegetableImage: ImageConstant.imgRectangle2777,
          vegetableText: "Verduras")
    ];
  }
}
