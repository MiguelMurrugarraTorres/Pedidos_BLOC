// ignore_for_file: must_be_immutable

part of 'menu_seguridad_bloc.dart';

/// Represents the state of MenuSeguridad in the application.
class MenuSeguridadState extends Equatable {
  MenuSeguridadState({
    this.searchController,
    this.menuSeguridadModelObj,
  });

  TextEditingController? searchController;

  MenuSeguridadModel? menuSeguridadModelObj;

  @override
  List<Object?> get props => [
        searchController,
        menuSeguridadModelObj,
      ];
  MenuSeguridadState copyWith({
    TextEditingController? searchController,
    MenuSeguridadModel? menuSeguridadModelObj,
  }) {
    return MenuSeguridadState(
      searchController: searchController ?? this.searchController,
      menuSeguridadModelObj:
          menuSeguridadModelObj ?? this.menuSeguridadModelObj,
    );
  }
}
