// ignore_for_file: must_be_immutable

part of 'rutas_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RutasTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RutasTabContainerEvent extends Equatable {}

/// Event that is dispatched when the RutasTabContainer widget is first created.
class RutasTabContainerInitialEvent extends RutasTabContainerEvent {
  @override
  List<Object?> get props => [];
}
