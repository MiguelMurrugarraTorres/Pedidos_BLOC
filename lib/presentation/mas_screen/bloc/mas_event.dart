// ignore_for_file: must_be_immutable

part of 'mas_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Mas widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MasEvent extends Equatable {}

/// Event that is dispatched when the Mas widget is first created.
class MasInitialEvent extends MasEvent {
  @override
  List<Object?> get props => [];
}
