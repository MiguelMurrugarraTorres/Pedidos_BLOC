// ignore_for_file: must_be_immutable

part of 'carrito_vista_principal_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CarritoVistaPrincipal widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CarritoVistaPrincipalEvent extends Equatable {}

/// Event that is dispatched when the CarritoVistaPrincipal widget is first created.
class CarritoVistaPrincipalInitialEvent extends CarritoVistaPrincipalEvent {
  @override
  List<Object?> get props => [];
}
