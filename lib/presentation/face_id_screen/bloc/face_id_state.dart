// ignore_for_file: must_be_immutable

part of 'face_id_bloc.dart';

/// Represents the state of FaceId in the application.
class FaceIdState extends Equatable {
  FaceIdState({this.faceIdModelObj});

  FaceIdModel? faceIdModelObj;

  @override
  List<Object?> get props => [
        faceIdModelObj,
      ];
  FaceIdState copyWith({FaceIdModel? faceIdModelObj}) {
    return FaceIdState(
      faceIdModelObj: faceIdModelObj ?? this.faceIdModelObj,
    );
  }
}
