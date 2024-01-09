// ignore_for_file: must_be_immutable

part of 'detalles_de_pedido_factura_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetallesDePedidoFactura widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetallesDePedidoFacturaEvent extends Equatable {}

/// Event that is dispatched when the DetallesDePedidoFactura widget is first created.
class DetallesDePedidoFacturaInitialEvent extends DetallesDePedidoFacturaEvent {
  @override
  List<Object?> get props => [];
}
