// ignore_for_file: must_be_immutable

part of 'datos_empresa_bloc.dart';

/// Represents the state of DatosEmpresa in the application.
class DatosEmpresaState extends Equatable {
  DatosEmpresaState({
    this.taxIDController,
    this.valueController,
    this.datosEmpresaModelObj,
  });

  TextEditingController? taxIDController;

  TextEditingController? valueController;

  DatosEmpresaModel? datosEmpresaModelObj;

  @override
  List<Object?> get props => [
        taxIDController,
        valueController,
        datosEmpresaModelObj,
      ];
  DatosEmpresaState copyWith({
    TextEditingController? taxIDController,
    TextEditingController? valueController,
    DatosEmpresaModel? datosEmpresaModelObj,
  }) {
    return DatosEmpresaState(
      taxIDController: taxIDController ?? this.taxIDController,
      valueController: valueController ?? this.valueController,
      datosEmpresaModelObj: datosEmpresaModelObj ?? this.datosEmpresaModelObj,
    );
  }
}
