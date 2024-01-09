// ignore_for_file: must_be_immutable

part of 'historial_cobrar_bloc.dart';

/// Represents the state of HistorialCobrar in the application.
class HistorialCobrarState extends Equatable {
  HistorialCobrarState({
    this.searchController,
    this.historialCobrarModelObj,
  });

  TextEditingController? searchController;

  HistorialCobrarModel? historialCobrarModelObj;

  @override
  List<Object?> get props => [
        searchController,
        historialCobrarModelObj,
      ];
  HistorialCobrarState copyWith({
    TextEditingController? searchController,
    HistorialCobrarModel? historialCobrarModelObj,
  }) {
    return HistorialCobrarState(
      searchController: searchController ?? this.searchController,
      historialCobrarModelObj:
          historialCobrarModelObj ?? this.historialCobrarModelObj,
    );
  }
}
