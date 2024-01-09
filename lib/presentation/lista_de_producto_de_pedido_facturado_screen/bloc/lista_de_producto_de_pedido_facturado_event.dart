// ignore_for_file: must_be_immutable

part of 'lista_de_producto_de_pedido_facturado_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ListaDeProductoDePedidoFacturado widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ListaDeProductoDePedidoFacturadoEvent extends Equatable {}

/// Event that is dispatched when the ListaDeProductoDePedidoFacturado widget is first created.
class ListaDeProductoDePedidoFacturadoInitialEvent
    extends ListaDeProductoDePedidoFacturadoEvent {
  @override
  List<Object?> get props => [];
}
