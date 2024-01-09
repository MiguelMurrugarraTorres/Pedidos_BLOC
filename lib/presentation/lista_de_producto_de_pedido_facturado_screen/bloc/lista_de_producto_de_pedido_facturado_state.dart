// ignore_for_file: must_be_immutable

part of 'lista_de_producto_de_pedido_facturado_bloc.dart';

/// Represents the state of ListaDeProductoDePedidoFacturado in the application.
class ListaDeProductoDePedidoFacturadoState extends Equatable {
  ListaDeProductoDePedidoFacturadoState(
      {this.listaDeProductoDePedidoFacturadoModelObj});

  ListaDeProductoDePedidoFacturadoModel?
      listaDeProductoDePedidoFacturadoModelObj;

  @override
  List<Object?> get props => [
        listaDeProductoDePedidoFacturadoModelObj,
      ];
  ListaDeProductoDePedidoFacturadoState copyWith(
      {ListaDeProductoDePedidoFacturadoModel?
          listaDeProductoDePedidoFacturadoModelObj}) {
    return ListaDeProductoDePedidoFacturadoState(
      listaDeProductoDePedidoFacturadoModelObj:
          listaDeProductoDePedidoFacturadoModelObj ??
              this.listaDeProductoDePedidoFacturadoModelObj,
    );
  }
}
