// ignore_for_file: must_be_immutable

part of 'mas_detalles_de_ruta_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MasDetallesDeRuta widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MasDetallesDeRutaEvent extends Equatable {}

/// Event that is dispatched when the MasDetallesDeRuta widget is first created.
class MasDetallesDeRutaInitialEvent extends MasDetallesDeRutaEvent {
  @override
  List<Object?> get props => [];
}
