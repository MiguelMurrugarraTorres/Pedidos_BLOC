// ignore_for_file: must_be_immutable

part of 'detalle_tienda_clientes_bloc.dart';

/// Represents the state of DetalleTiendaClientes in the application.
class DetalleTiendaClientesState extends Equatable {
  DetalleTiendaClientesState({
    this.addressController,
    this.detalleTiendaClientesModelObj,
  });

  TextEditingController? addressController;

  DetalleTiendaClientesModel? detalleTiendaClientesModelObj;

  @override
  List<Object?> get props => [
        addressController,
        detalleTiendaClientesModelObj,
      ];
  DetalleTiendaClientesState copyWith({
    TextEditingController? addressController,
    DetalleTiendaClientesModel? detalleTiendaClientesModelObj,
  }) {
    return DetalleTiendaClientesState(
      addressController: addressController ?? this.addressController,
      detalleTiendaClientesModelObj:
          detalleTiendaClientesModelObj ?? this.detalleTiendaClientesModelObj,
    );
  }
}
