// ignore_for_file: must_be_immutable

part of 'mas_detalles_de_ruta_bloc.dart';

/// Represents the state of MasDetallesDeRuta in the application.
class MasDetallesDeRutaState extends Equatable {
  MasDetallesDeRutaState({this.masDetallesDeRutaModelObj});

  MasDetallesDeRutaModel? masDetallesDeRutaModelObj;

  @override
  List<Object?> get props => [
        masDetallesDeRutaModelObj,
      ];
  MasDetallesDeRutaState copyWith(
      {MasDetallesDeRutaModel? masDetallesDeRutaModelObj}) {
    return MasDetallesDeRutaState(
      masDetallesDeRutaModelObj:
          masDetallesDeRutaModelObj ?? this.masDetallesDeRutaModelObj,
    );
  }
}
