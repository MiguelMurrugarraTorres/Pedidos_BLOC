// ignore_for_file: must_be_immutable

part of 'touch_id_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TouchId widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TouchIdEvent extends Equatable {}

/// Event that is dispatched when the TouchId widget is first created.
class TouchIdInitialEvent extends TouchIdEvent {
  @override
  List<Object?> get props => [];
}
