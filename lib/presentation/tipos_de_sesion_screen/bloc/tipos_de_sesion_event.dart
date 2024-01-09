// ignore_for_file: must_be_immutable

part of 'tipos_de_sesion_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TiposDeSesion widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TiposDeSesionEvent extends Equatable {}

/// Event that is dispatched when the TiposDeSesion widget is first created.
class TiposDeSesionInitialEvent extends TiposDeSesionEvent {
  @override
  List<Object?> get props => [];
}
