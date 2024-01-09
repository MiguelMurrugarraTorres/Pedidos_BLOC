// ignore_for_file: must_be_immutable

part of 'reporte_enviado_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReporteEnviado widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReporteEnviadoEvent extends Equatable {}

/// Event that is dispatched when the ReporteEnviado widget is first created.
class ReporteEnviadoInitialEvent extends ReporteEnviadoEvent {
  @override
  List<Object?> get props => [];
}
