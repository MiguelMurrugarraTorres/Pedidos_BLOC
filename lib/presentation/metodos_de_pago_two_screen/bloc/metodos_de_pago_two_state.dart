// ignore_for_file: must_be_immutable

part of 'metodos_de_pago_two_bloc.dart';

/// Represents the state of MetodosDePagoTwo in the application.
class MetodosDePagoTwoState extends Equatable {
  MetodosDePagoTwoState({this.metodosDePagoTwoModelObj});

  MetodosDePagoTwoModel? metodosDePagoTwoModelObj;

  @override
  List<Object?> get props => [
        metodosDePagoTwoModelObj,
      ];
  MetodosDePagoTwoState copyWith(
      {MetodosDePagoTwoModel? metodosDePagoTwoModelObj}) {
    return MetodosDePagoTwoState(
      metodosDePagoTwoModelObj:
          metodosDePagoTwoModelObj ?? this.metodosDePagoTwoModelObj,
    );
  }
}
