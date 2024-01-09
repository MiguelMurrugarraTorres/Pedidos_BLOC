// ignore_for_file: must_be_immutable

part of 'rutas_visitas_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RutasVisitas widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RutasVisitasEvent extends Equatable {}

/// Event that is dispatched when the RutasVisitas widget is first created.
class RutasVisitasInitialEvent extends RutasVisitasEvent {
  @override
  List<Object?> get props => [];
}
