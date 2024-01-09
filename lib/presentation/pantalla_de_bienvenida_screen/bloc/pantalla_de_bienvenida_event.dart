// ignore_for_file: must_be_immutable

part of 'pantalla_de_bienvenida_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaDeBienvenida widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaDeBienvenidaEvent extends Equatable {}

/// Event that is dispatched when the PantallaDeBienvenida widget is first created.
class PantallaDeBienvenidaInitialEvent extends PantallaDeBienvenidaEvent {
  @override
  List<Object?> get props => [];
}
