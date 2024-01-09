// ignore_for_file: must_be_immutable

part of 'datos_del_usuario_one_bloc.dart';

/// Represents the state of DatosDelUsuarioOne in the application.
class DatosDelUsuarioOneState extends Equatable {
  DatosDelUsuarioOneState({
    this.enterYourUserController,
    this.enterYourPasswordController,
    this.checkBox = false,
    this.datosDelUsuarioOneModelObj,
  });

  TextEditingController? enterYourUserController;

  TextEditingController? enterYourPasswordController;

  DatosDelUsuarioOneModel? datosDelUsuarioOneModelObj;

  bool checkBox;

  @override
  List<Object?> get props => [
        enterYourUserController,
        enterYourPasswordController,
        checkBox,
        datosDelUsuarioOneModelObj,
      ];
  DatosDelUsuarioOneState copyWith({
    TextEditingController? enterYourUserController,
    TextEditingController? enterYourPasswordController,
    bool? checkBox,
    DatosDelUsuarioOneModel? datosDelUsuarioOneModelObj,
  }) {
    return DatosDelUsuarioOneState(
      enterYourUserController:
          enterYourUserController ?? this.enterYourUserController,
      enterYourPasswordController:
          enterYourPasswordController ?? this.enterYourPasswordController,
      checkBox: checkBox ?? this.checkBox,
      datosDelUsuarioOneModelObj:
          datosDelUsuarioOneModelObj ?? this.datosDelUsuarioOneModelObj,
    );
  }
}
