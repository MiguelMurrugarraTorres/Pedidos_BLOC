// ignore_for_file: must_be_immutable

part of 'reportar_problema_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReportarProblema widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReportarProblemaEvent extends Equatable {}

/// Event that is dispatched when the ReportarProblema widget is first created.
class ReportarProblemaInitialEvent extends ReportarProblemaEvent {
  @override
  List<Object?> get props => [];
}
