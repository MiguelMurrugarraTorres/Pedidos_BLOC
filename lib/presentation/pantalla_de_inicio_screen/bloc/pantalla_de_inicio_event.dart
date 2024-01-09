// ignore_for_file: must_be_immutable

part of 'pantalla_de_inicio_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaDeInicio widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaDeInicioEvent extends Equatable {}

/// Event that is dispatched when the PantallaDeInicio widget is first created.
class PantallaDeInicioInitialEvent extends PantallaDeInicioEvent {
  @override
  List<Object?> get props => [];
}
