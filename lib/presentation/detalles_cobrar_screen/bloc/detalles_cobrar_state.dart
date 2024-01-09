// ignore_for_file: must_be_immutable

part of 'detalles_cobrar_bloc.dart';

/// Represents the state of DetallesCobrar in the application.
class DetallesCobrarState extends Equatable {
  DetallesCobrarState({this.detallesCobrarModelObj});

  DetallesCobrarModel? detallesCobrarModelObj;

  @override
  List<Object?> get props => [
        detallesCobrarModelObj,
      ];
  DetallesCobrarState copyWith({DetallesCobrarModel? detallesCobrarModelObj}) {
    return DetallesCobrarState(
      detallesCobrarModelObj:
          detallesCobrarModelObj ?? this.detallesCobrarModelObj,
    );
  }
}
