import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productlist1_item_model.dart';
import 'package:pedidos/presentation/carrito_vista_principal_screen/models/carrito_vista_principal_model.dart';
part 'carrito_vista_principal_event.dart';
part 'carrito_vista_principal_state.dart';

/// A bloc that manages the state of a CarritoVistaPrincipal according to the event that is dispatched to it.
class CarritoVistaPrincipalBloc
    extends Bloc<CarritoVistaPrincipalEvent, CarritoVistaPrincipalState> {
  CarritoVistaPrincipalBloc(CarritoVistaPrincipalState initialState)
      : super(initialState) {
    on<CarritoVistaPrincipalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CarritoVistaPrincipalInitialEvent event,
    Emitter<CarritoVistaPrincipalState> emit,
  ) async {
    emit(state.copyWith(
        carritoVistaPrincipalModelObj:
            state.carritoVistaPrincipalModelObj?.copyWith(
      productlist1ItemList: fillProductlist1ItemList(),
    )));
  }

  List<Productlist1ItemModel> fillProductlist1ItemList() {
    return [
      Productlist1ItemModel(
          productImage: ImageConstant.img595414273x84,
          productName: "Leche Evaporada Entera",
          stockCount: "Stock: 120")
    ];
  }
}
