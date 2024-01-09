// ignore_for_file: must_be_immutable

part of 'reportar_problema_bloc.dart';

/// Represents the state of ReportarProblema in the application.
class ReportarProblemaState extends Equatable {
  ReportarProblemaState({
    this.storeClosedController,
    this.reportarProblemaModelObj,
  });

  TextEditingController? storeClosedController;

  ReportarProblemaModel? reportarProblemaModelObj;

  @override
  List<Object?> get props => [
        storeClosedController,
        reportarProblemaModelObj,
      ];
  ReportarProblemaState copyWith({
    TextEditingController? storeClosedController,
    ReportarProblemaModel? reportarProblemaModelObj,
  }) {
    return ReportarProblemaState(
      storeClosedController:
          storeClosedController ?? this.storeClosedController,
      reportarProblemaModelObj:
          reportarProblemaModelObj ?? this.reportarProblemaModelObj,
    );
  }
}
