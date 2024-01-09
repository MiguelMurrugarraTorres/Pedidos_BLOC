// ignore_for_file: must_be_immutable

part of 'metodos_de_pago_2_yape_resultado_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MetodosDePago2YapeResultado widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MetodosDePago2YapeResultadoEvent extends Equatable {}

/// Event that is dispatched when the MetodosDePago2YapeResultado widget is first created.
class MetodosDePago2YapeResultadoInitialEvent
    extends MetodosDePago2YapeResultadoEvent {
  @override
  List<Object?> get props => [];
}
