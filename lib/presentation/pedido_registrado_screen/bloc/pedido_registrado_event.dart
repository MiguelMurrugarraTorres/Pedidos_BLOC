// ignore_for_file: must_be_immutable

part of 'pedido_registrado_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PedidoRegistrado widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PedidoRegistradoEvent extends Equatable {}

/// Event that is dispatched when the PedidoRegistrado widget is first created.
class PedidoRegistradoInitialEvent extends PedidoRegistradoEvent {
  @override
  List<Object?> get props => [];
}
