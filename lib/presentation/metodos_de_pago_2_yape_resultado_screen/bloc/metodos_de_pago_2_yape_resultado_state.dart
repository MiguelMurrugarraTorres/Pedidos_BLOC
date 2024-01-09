// ignore_for_file: must_be_immutable

part of 'metodos_de_pago_2_yape_resultado_bloc.dart';

/// Represents the state of MetodosDePago2YapeResultado in the application.
class MetodosDePago2YapeResultadoState extends Equatable {
  MetodosDePago2YapeResultadoState({this.metodosDePago2YapeResultadoModelObj});

  MetodosDePago2YapeResultadoModel? metodosDePago2YapeResultadoModelObj;

  @override
  List<Object?> get props => [
        metodosDePago2YapeResultadoModelObj,
      ];
  MetodosDePago2YapeResultadoState copyWith(
      {MetodosDePago2YapeResultadoModel? metodosDePago2YapeResultadoModelObj}) {
    return MetodosDePago2YapeResultadoState(
      metodosDePago2YapeResultadoModelObj:
          metodosDePago2YapeResultadoModelObj ??
              this.metodosDePago2YapeResultadoModelObj,
    );
  }
}
