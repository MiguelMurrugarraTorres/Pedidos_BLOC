// ignore_for_file: must_be_immutable

part of 'pedido_facturado_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PedidoFacturado widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PedidoFacturadoEvent extends Equatable {}

/// Event that is dispatched when the PedidoFacturado widget is first created.
class PedidoFacturadoInitialEvent extends PedidoFacturadoEvent {
  @override
  List<Object?> get props => [];
}
