// ignore_for_file: must_be_immutable

part of 'clientes_vista_tienda_bloc.dart';

/// Represents the state of ClientesVistaTienda in the application.
class ClientesVistaTiendaState extends Equatable {
  ClientesVistaTiendaState({
    this.searchController,
    this.clientesVistaTiendaModelObj,
  });

  TextEditingController? searchController;

  ClientesVistaTiendaModel? clientesVistaTiendaModelObj;

  @override
  List<Object?> get props => [
        searchController,
        clientesVistaTiendaModelObj,
      ];
  ClientesVistaTiendaState copyWith({
    TextEditingController? searchController,
    ClientesVistaTiendaModel? clientesVistaTiendaModelObj,
  }) {
    return ClientesVistaTiendaState(
      searchController: searchController ?? this.searchController,
      clientesVistaTiendaModelObj:
          clientesVistaTiendaModelObj ?? this.clientesVistaTiendaModelObj,
    );
  }
}
