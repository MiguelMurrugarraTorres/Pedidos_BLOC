// ignore_for_file: must_be_immutable

part of 'rutas_bloc.dart';

/// Represents the state of Rutas in the application.
class RutasState extends Equatable {
  RutasState({this.rutasModelObj});

  RutasModel? rutasModelObj;

  @override
  List<Object?> get props => [
        rutasModelObj,
      ];
  RutasState copyWith({RutasModel? rutasModelObj}) {
    return RutasState(
      rutasModelObj: rutasModelObj ?? this.rutasModelObj,
    );
  }
}
