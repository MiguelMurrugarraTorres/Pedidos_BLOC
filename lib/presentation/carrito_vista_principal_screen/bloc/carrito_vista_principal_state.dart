// ignore_for_file: must_be_immutable

part of 'carrito_vista_principal_bloc.dart';

/// Represents the state of CarritoVistaPrincipal in the application.
class CarritoVistaPrincipalState extends Equatable {
  CarritoVistaPrincipalState({this.carritoVistaPrincipalModelObj});

  CarritoVistaPrincipalModel? carritoVistaPrincipalModelObj;

  @override
  List<Object?> get props => [
        carritoVistaPrincipalModelObj,
      ];
  CarritoVistaPrincipalState copyWith(
      {CarritoVistaPrincipalModel? carritoVistaPrincipalModelObj}) {
    return CarritoVistaPrincipalState(
      carritoVistaPrincipalModelObj:
          carritoVistaPrincipalModelObj ?? this.carritoVistaPrincipalModelObj,
    );
  }
}
