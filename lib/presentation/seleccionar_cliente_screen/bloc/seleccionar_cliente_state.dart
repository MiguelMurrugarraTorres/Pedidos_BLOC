// ignore_for_file: must_be_immutable

part of 'seleccionar_cliente_bloc.dart';

/// Represents the state of SeleccionarCliente in the application.
class SeleccionarClienteState extends Equatable {
  SeleccionarClienteState({
    this.searchController,
    this.seleccionarClienteModelObj,
  });

  TextEditingController? searchController;

  SeleccionarClienteModel? seleccionarClienteModelObj;

  @override
  List<Object?> get props => [
        searchController,
        seleccionarClienteModelObj,
      ];
  SeleccionarClienteState copyWith({
    TextEditingController? searchController,
    SeleccionarClienteModel? seleccionarClienteModelObj,
  }) {
    return SeleccionarClienteState(
      searchController: searchController ?? this.searchController,
      seleccionarClienteModelObj:
          seleccionarClienteModelObj ?? this.seleccionarClienteModelObj,
    );
  }
}
