// ignore_for_file: must_be_immutable

part of 'menu_seguridad_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MenuSeguridad widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MenuSeguridadEvent extends Equatable {}

/// Event that is dispatched when the MenuSeguridad widget is first created.
class MenuSeguridadInitialEvent extends MenuSeguridadEvent {
  @override
  List<Object?> get props => [];
}
