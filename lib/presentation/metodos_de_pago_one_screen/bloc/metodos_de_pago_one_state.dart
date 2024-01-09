// ignore_for_file: must_be_immutable

part of 'metodos_de_pago_one_bloc.dart';

/// Represents the state of MetodosDePagoOne in the application.
class MetodosDePagoOneState extends Equatable {
  MetodosDePagoOneState({this.metodosDePagoOneModelObj});

  MetodosDePagoOneModel? metodosDePagoOneModelObj;

  @override
  List<Object?> get props => [
        metodosDePagoOneModelObj,
      ];
  MetodosDePagoOneState copyWith(
      {MetodosDePagoOneModel? metodosDePagoOneModelObj}) {
    return MetodosDePagoOneState(
      metodosDePagoOneModelObj:
          metodosDePagoOneModelObj ?? this.metodosDePagoOneModelObj,
    );
  }
}
