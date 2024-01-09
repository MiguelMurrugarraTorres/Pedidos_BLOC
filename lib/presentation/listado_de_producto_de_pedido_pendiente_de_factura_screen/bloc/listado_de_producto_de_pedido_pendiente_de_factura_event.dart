// ignore_for_file: must_be_immutable

part of 'listado_de_producto_de_pedido_pendiente_de_factura_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ListadoDeProductoDePedidoPendienteDeFactura widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ListadoDeProductoDePedidoPendienteDeFacturaEvent
    extends Equatable {}

/// Event that is dispatched when the ListadoDeProductoDePedidoPendienteDeFactura widget is first created.
class ListadoDeProductoDePedidoPendienteDeFacturaInitialEvent
    extends ListadoDeProductoDePedidoPendienteDeFacturaEvent {
  @override
  List<Object?> get props => [];
}
