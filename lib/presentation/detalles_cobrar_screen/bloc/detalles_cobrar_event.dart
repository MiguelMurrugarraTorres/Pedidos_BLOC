// ignore_for_file: must_be_immutable

part of 'detalles_cobrar_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetallesCobrar widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetallesCobrarEvent extends Equatable {}

/// Event that is dispatched when the DetallesCobrar widget is first created.
class DetallesCobrarInitialEvent extends DetallesCobrarEvent {
  @override
  List<Object?> get props => [];
}
