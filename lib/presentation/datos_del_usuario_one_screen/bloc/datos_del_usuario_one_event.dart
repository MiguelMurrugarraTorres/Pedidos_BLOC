// ignore_for_file: must_be_immutable

part of 'datos_del_usuario_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DatosDelUsuarioOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DatosDelUsuarioOneEvent extends Equatable {}

/// Event that is dispatched when the DatosDelUsuarioOne widget is first created.
class DatosDelUsuarioOneInitialEvent extends DatosDelUsuarioOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends DatosDelUsuarioOneEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
