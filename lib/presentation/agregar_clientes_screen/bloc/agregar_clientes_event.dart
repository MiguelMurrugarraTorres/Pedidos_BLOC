// ignore_for_file: must_be_immutable

part of 'agregar_clientes_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AgregarClientes widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AgregarClientesEvent extends Equatable {}

/// Event that is dispatched when the AgregarClientes widget is first created.
class AgregarClientesInitialEvent extends AgregarClientesEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends AgregarClientesEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends AgregarClientesEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown2Event extends AgregarClientesEvent {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
