// ignore_for_file: must_be_immutable

part of 'reporte_enviado_bloc.dart';

/// Represents the state of ReporteEnviado in the application.
class ReporteEnviadoState extends Equatable {
  ReporteEnviadoState({this.reporteEnviadoModelObj});

  ReporteEnviadoModel? reporteEnviadoModelObj;

  @override
  List<Object?> get props => [
        reporteEnviadoModelObj,
      ];
  ReporteEnviadoState copyWith({ReporteEnviadoModel? reporteEnviadoModelObj}) {
    return ReporteEnviadoState(
      reporteEnviadoModelObj:
          reporteEnviadoModelObj ?? this.reporteEnviadoModelObj,
    );
  }
}
