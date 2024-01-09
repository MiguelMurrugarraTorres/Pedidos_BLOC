// ignore_for_file: must_be_immutable

part of 'tipos_de_sesion_bloc.dart';

/// Represents the state of TiposDeSesion in the application.
class TiposDeSesionState extends Equatable {
  TiposDeSesionState({this.tiposDeSesionModelObj});

  TiposDeSesionModel? tiposDeSesionModelObj;

  @override
  List<Object?> get props => [
        tiposDeSesionModelObj,
      ];
  TiposDeSesionState copyWith({TiposDeSesionModel? tiposDeSesionModelObj}) {
    return TiposDeSesionState(
      tiposDeSesionModelObj:
          tiposDeSesionModelObj ?? this.tiposDeSesionModelObj,
    );
  }
}
