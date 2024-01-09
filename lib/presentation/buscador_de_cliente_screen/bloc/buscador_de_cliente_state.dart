// ignore_for_file: must_be_immutable

part of 'buscador_de_cliente_bloc.dart';

/// Represents the state of BuscadorDeCliente in the application.
class BuscadorDeClienteState extends Equatable {
  BuscadorDeClienteState({
    this.consultantController,
    this.valueController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.buscadorDeClienteModelObj,
  });

  TextEditingController? consultantController;

  TextEditingController? valueController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  BuscadorDeClienteModel? buscadorDeClienteModelObj;

  @override
  List<Object?> get props => [
        consultantController,
        valueController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        buscadorDeClienteModelObj,
      ];
  BuscadorDeClienteState copyWith({
    TextEditingController? consultantController,
    TextEditingController? valueController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    BuscadorDeClienteModel? buscadorDeClienteModelObj,
  }) {
    return BuscadorDeClienteState(
      consultantController: consultantController ?? this.consultantController,
      valueController: valueController ?? this.valueController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      buscadorDeClienteModelObj:
          buscadorDeClienteModelObj ?? this.buscadorDeClienteModelObj,
    );
  }
}
