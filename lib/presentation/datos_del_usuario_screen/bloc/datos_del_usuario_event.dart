// ignore_for_file: must_be_immutable

part of 'datos_del_usuario_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DatosDelUsuario widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DatosDelUsuarioEvent extends Equatable {}

/// Event that is dispatched when the DatosDelUsuario widget is first created.
class DatosDelUsuarioInitialEvent extends DatosDelUsuarioEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends DatosDelUsuarioEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
