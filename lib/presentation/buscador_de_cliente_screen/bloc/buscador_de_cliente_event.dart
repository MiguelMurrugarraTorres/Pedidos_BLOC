// ignore_for_file: must_be_immutable

part of 'buscador_de_cliente_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BuscadorDeCliente widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BuscadorDeClienteEvent extends Equatable {}

/// Event that is dispatched when the BuscadorDeCliente widget is first created.
class BuscadorDeClienteInitialEvent extends BuscadorDeClienteEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends BuscadorDeClienteEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends BuscadorDeClienteEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown2Event extends BuscadorDeClienteEvent {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
