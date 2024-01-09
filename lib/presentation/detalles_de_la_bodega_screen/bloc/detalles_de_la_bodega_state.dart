// ignore_for_file: must_be_immutable

part of 'detalles_de_la_bodega_bloc.dart';

/// Represents the state of DetallesDeLaBodega in the application.
class DetallesDeLaBodegaState extends Equatable {
  DetallesDeLaBodegaState({this.detallesDeLaBodegaModelObj});

  DetallesDeLaBodegaModel? detallesDeLaBodegaModelObj;

  @override
  List<Object?> get props => [
        detallesDeLaBodegaModelObj,
      ];
  DetallesDeLaBodegaState copyWith(
      {DetallesDeLaBodegaModel? detallesDeLaBodegaModelObj}) {
    return DetallesDeLaBodegaState(
      detallesDeLaBodegaModelObj:
          detallesDeLaBodegaModelObj ?? this.detallesDeLaBodegaModelObj,
    );
  }
}
