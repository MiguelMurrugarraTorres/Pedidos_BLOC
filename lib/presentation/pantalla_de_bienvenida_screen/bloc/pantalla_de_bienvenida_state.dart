// ignore_for_file: must_be_immutable

part of 'pantalla_de_bienvenida_bloc.dart';

/// Represents the state of PantallaDeBienvenida in the application.
class PantallaDeBienvenidaState extends Equatable {
  PantallaDeBienvenidaState({this.pantallaDeBienvenidaModelObj});

  PantallaDeBienvenidaModel? pantallaDeBienvenidaModelObj;

  @override
  List<Object?> get props => [
        pantallaDeBienvenidaModelObj,
      ];
  PantallaDeBienvenidaState copyWith(
      {PantallaDeBienvenidaModel? pantallaDeBienvenidaModelObj}) {
    return PantallaDeBienvenidaState(
      pantallaDeBienvenidaModelObj:
          pantallaDeBienvenidaModelObj ?? this.pantallaDeBienvenidaModelObj,
    );
  }
}
