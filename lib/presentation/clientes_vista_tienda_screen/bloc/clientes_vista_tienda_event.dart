// ignore_for_file: must_be_immutable

part of 'clientes_vista_tienda_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ClientesVistaTienda widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ClientesVistaTiendaEvent extends Equatable {}

/// Event that is dispatched when the ClientesVistaTienda widget is first created.
class ClientesVistaTiendaInitialEvent extends ClientesVistaTiendaEvent {
  @override
  List<Object?> get props => [];
}
