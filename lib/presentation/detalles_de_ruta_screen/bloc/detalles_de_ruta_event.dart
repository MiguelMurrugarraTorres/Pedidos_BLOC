// ignore_for_file: must_be_immutable

part of 'detalles_de_ruta_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetallesDeRuta widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetallesDeRutaEvent extends Equatable {}

/// Event that is dispatched when the DetallesDeRuta widget is first created.
class DetallesDeRutaInitialEvent extends DetallesDeRutaEvent {
  @override
  List<Object?> get props => [];
}
