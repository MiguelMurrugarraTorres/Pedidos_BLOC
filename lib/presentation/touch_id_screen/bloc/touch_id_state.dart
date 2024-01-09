// ignore_for_file: must_be_immutable

part of 'touch_id_bloc.dart';

/// Represents the state of TouchId in the application.
class TouchIdState extends Equatable {
  TouchIdState({this.touchIdModelObj});

  TouchIdModel? touchIdModelObj;

  @override
  List<Object?> get props => [
        touchIdModelObj,
      ];
  TouchIdState copyWith({TouchIdModel? touchIdModelObj}) {
    return TouchIdState(
      touchIdModelObj: touchIdModelObj ?? this.touchIdModelObj,
    );
  }
}
