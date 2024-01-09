// ignore_for_file: must_be_immutable

part of 'cliente_registrado_bloc.dart';

/// Represents the state of ClienteRegistrado in the application.
class ClienteRegistradoState extends Equatable {
  ClienteRegistradoState({this.clienteRegistradoModelObj});

  ClienteRegistradoModel? clienteRegistradoModelObj;

  @override
  List<Object?> get props => [
        clienteRegistradoModelObj,
      ];
  ClienteRegistradoState copyWith(
      {ClienteRegistradoModel? clienteRegistradoModelObj}) {
    return ClienteRegistradoState(
      clienteRegistradoModelObj:
          clienteRegistradoModelObj ?? this.clienteRegistradoModelObj,
    );
  }
}
