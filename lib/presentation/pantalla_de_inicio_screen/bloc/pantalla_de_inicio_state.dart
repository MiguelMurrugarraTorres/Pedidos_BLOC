// ignore_for_file: must_be_immutable

part of 'pantalla_de_inicio_bloc.dart';

/// Represents the state of PantallaDeInicio in the application.
class PantallaDeInicioState extends Equatable {
  PantallaDeInicioState({this.pantallaDeInicioModelObj});

  PantallaDeInicioModel? pantallaDeInicioModelObj;

  @override
  List<Object?> get props => [
        pantallaDeInicioModelObj,
      ];
  PantallaDeInicioState copyWith(
      {PantallaDeInicioModel? pantallaDeInicioModelObj}) {
    return PantallaDeInicioState(
      pantallaDeInicioModelObj:
          pantallaDeInicioModelObj ?? this.pantallaDeInicioModelObj,
    );
  }
}
