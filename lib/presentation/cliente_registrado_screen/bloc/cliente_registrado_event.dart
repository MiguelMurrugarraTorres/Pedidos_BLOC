// ignore_for_file: must_be_immutable

part of 'cliente_registrado_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ClienteRegistrado widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ClienteRegistradoEvent extends Equatable {}

/// Event that is dispatched when the ClienteRegistrado widget is first created.
class ClienteRegistradoInitialEvent extends ClienteRegistradoEvent {
  @override
  List<Object?> get props => [];
}
