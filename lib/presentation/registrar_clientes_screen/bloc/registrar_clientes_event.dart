// ignore_for_file: must_be_immutable

part of 'registrar_clientes_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RegistrarClientes widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegistrarClientesEvent extends Equatable {}

/// Event that is dispatched when the RegistrarClientes widget is first created.
class RegistrarClientesInitialEvent extends RegistrarClientesEvent {
  @override
  List<Object?> get props => [];
}
