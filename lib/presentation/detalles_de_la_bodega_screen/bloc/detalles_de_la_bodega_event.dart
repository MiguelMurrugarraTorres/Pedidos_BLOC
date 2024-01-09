// ignore_for_file: must_be_immutable

part of 'detalles_de_la_bodega_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetallesDeLaBodega widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetallesDeLaBodegaEvent extends Equatable {}

/// Event that is dispatched when the DetallesDeLaBodega widget is first created.
class DetallesDeLaBodegaInitialEvent extends DetallesDeLaBodegaEvent {
  @override
  List<Object?> get props => [];
}
