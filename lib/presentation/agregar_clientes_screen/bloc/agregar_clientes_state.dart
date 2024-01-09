// ignore_for_file: must_be_immutable

part of 'agregar_clientes_bloc.dart';

/// Represents the state of AgregarClientes in the application.
class AgregarClientesState extends Equatable {
  AgregarClientesState({
    this.valueController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.agregarClientesModelObj,
  });

  TextEditingController? valueController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  AgregarClientesModel? agregarClientesModelObj;

  @override
  List<Object?> get props => [
        valueController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        agregarClientesModelObj,
      ];
  AgregarClientesState copyWith({
    TextEditingController? valueController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    AgregarClientesModel? agregarClientesModelObj,
  }) {
    return AgregarClientesState(
      valueController: valueController ?? this.valueController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      agregarClientesModelObj:
          agregarClientesModelObj ?? this.agregarClientesModelObj,
    );
  }
}
