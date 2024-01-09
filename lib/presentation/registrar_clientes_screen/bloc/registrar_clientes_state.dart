// ignore_for_file: must_be_immutable

part of 'registrar_clientes_bloc.dart';

/// Represents the state of RegistrarClientes in the application.
class RegistrarClientesState extends Equatable {
  RegistrarClientesState({
    this.searchController,
    this.registrarClientesModelObj,
  });

  TextEditingController? searchController;

  RegistrarClientesModel? registrarClientesModelObj;

  @override
  List<Object?> get props => [
        searchController,
        registrarClientesModelObj,
      ];
  RegistrarClientesState copyWith({
    TextEditingController? searchController,
    RegistrarClientesModel? registrarClientesModelObj,
  }) {
    return RegistrarClientesState(
      searchController: searchController ?? this.searchController,
      registrarClientesModelObj:
          registrarClientesModelObj ?? this.registrarClientesModelObj,
    );
  }
}
