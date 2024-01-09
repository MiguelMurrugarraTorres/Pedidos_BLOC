// ignore_for_file: must_be_immutable

part of 'metodos_de_pago_bloc.dart';

/// Represents the state of MetodosDePago in the application.
class MetodosDePagoState extends Equatable {
  MetodosDePagoState({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.metodosDePagoModelObj,
  });

  MetodosDePagoModel? metodosDePagoModelObj;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        metodosDePagoModelObj,
      ];
  MetodosDePagoState copyWith({
    String? radioGroup,
    String? radioGroup1,
    MetodosDePagoModel? metodosDePagoModelObj,
  }) {
    return MetodosDePagoState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      metodosDePagoModelObj:
          metodosDePagoModelObj ?? this.metodosDePagoModelObj,
    );
  }
}
