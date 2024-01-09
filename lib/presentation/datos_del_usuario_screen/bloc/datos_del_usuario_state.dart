// ignore_for_file: must_be_immutable

part of 'datos_del_usuario_bloc.dart';

/// Represents the state of DatosDelUsuario in the application.
class DatosDelUsuarioState extends Equatable {
  DatosDelUsuarioState({
    this.enterYourUserController,
    this.enterYourPasswordController,
    this.checkBox = false,
    this.datosDelUsuarioModelObj,
  });

  TextEditingController? enterYourUserController;

  TextEditingController? enterYourPasswordController;

  DatosDelUsuarioModel? datosDelUsuarioModelObj;

  bool checkBox;

  @override
  List<Object?> get props => [
        enterYourUserController,
        enterYourPasswordController,
        checkBox,
        datosDelUsuarioModelObj,
      ];
  DatosDelUsuarioState copyWith({
    TextEditingController? enterYourUserController,
    TextEditingController? enterYourPasswordController,
    bool? checkBox,
    DatosDelUsuarioModel? datosDelUsuarioModelObj,
  }) {
    return DatosDelUsuarioState(
      enterYourUserController:
          enterYourUserController ?? this.enterYourUserController,
      enterYourPasswordController:
          enterYourPasswordController ?? this.enterYourPasswordController,
      checkBox: checkBox ?? this.checkBox,
      datosDelUsuarioModelObj:
          datosDelUsuarioModelObj ?? this.datosDelUsuarioModelObj,
    );
  }
}
