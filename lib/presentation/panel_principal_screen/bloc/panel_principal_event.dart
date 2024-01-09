// ignore_for_file: must_be_immutable

part of 'panel_principal_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PanelPrincipal widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PanelPrincipalEvent extends Equatable {}

/// Event that is dispatched when the PanelPrincipal widget is first created.
class PanelPrincipalInitialEvent extends PanelPrincipalEvent {
  @override
  List<Object?> get props => [];
}
