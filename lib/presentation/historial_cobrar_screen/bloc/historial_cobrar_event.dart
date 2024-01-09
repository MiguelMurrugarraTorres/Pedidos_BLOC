// ignore_for_file: must_be_immutable

part of 'historial_cobrar_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HistorialCobrar widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HistorialCobrarEvent extends Equatable {}

/// Event that is dispatched when the HistorialCobrar widget is first created.
class HistorialCobrarInitialEvent extends HistorialCobrarEvent {
  @override
  List<Object?> get props => [];
}
