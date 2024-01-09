// ignore_for_file: must_be_immutable

part of 'face_id_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FaceId widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FaceIdEvent extends Equatable {}

/// Event that is dispatched when the FaceId widget is first created.
class FaceIdInitialEvent extends FaceIdEvent {
  @override
  List<Object?> get props => [];
}
