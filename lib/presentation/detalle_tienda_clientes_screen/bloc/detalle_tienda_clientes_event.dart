// ignore_for_file: must_be_immutable

part of 'detalle_tienda_clientes_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetalleTiendaClientes widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetalleTiendaClientesEvent extends Equatable {}

/// Event that is dispatched when the DetalleTiendaClientes widget is first created.
class DetalleTiendaClientesInitialEvent extends DetalleTiendaClientesEvent {
  @override
  List<Object?> get props => [];
}
