// ignore_for_file: must_be_immutable

part of 'rutas_visitas_bloc.dart';

/// Represents the state of RutasVisitas in the application.
class RutasVisitasState extends Equatable {
  RutasVisitasState({this.rutasVisitasModelObj});

  RutasVisitasModel? rutasVisitasModelObj;

  @override
  List<Object?> get props => [
        rutasVisitasModelObj,
      ];
  RutasVisitasState copyWith({RutasVisitasModel? rutasVisitasModelObj}) {
    return RutasVisitasState(
      rutasVisitasModelObj: rutasVisitasModelObj ?? this.rutasVisitasModelObj,
    );
  }
}
