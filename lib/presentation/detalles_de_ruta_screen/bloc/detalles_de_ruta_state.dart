// ignore_for_file: must_be_immutable

part of 'detalles_de_ruta_bloc.dart';

/// Represents the state of DetallesDeRuta in the application.
class DetallesDeRutaState extends Equatable {
  DetallesDeRutaState({this.detallesDeRutaModelObj});

  DetallesDeRutaModel? detallesDeRutaModelObj;

  @override
  List<Object?> get props => [
        detallesDeRutaModelObj,
      ];
  DetallesDeRutaState copyWith({DetallesDeRutaModel? detallesDeRutaModelObj}) {
    return DetallesDeRutaState(
      detallesDeRutaModelObj:
          detallesDeRutaModelObj ?? this.detallesDeRutaModelObj,
    );
  }
}
