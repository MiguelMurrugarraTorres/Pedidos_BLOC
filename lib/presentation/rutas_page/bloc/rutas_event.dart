// ignore_for_file: must_be_immutable

part of 'rutas_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Rutas widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RutasEvent extends Equatable {}

/// Event that is dispatched when the Rutas widget is first created.
class RutasInitialEvent extends RutasEvent {
  @override
  List<Object?> get props => [];
}
