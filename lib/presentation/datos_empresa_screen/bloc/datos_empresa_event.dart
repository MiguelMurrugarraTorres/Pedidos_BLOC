// ignore_for_file: must_be_immutable

part of 'datos_empresa_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DatosEmpresa widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DatosEmpresaEvent extends Equatable {}

/// Event that is dispatched when the DatosEmpresa widget is first created.
class DatosEmpresaInitialEvent extends DatosEmpresaEvent {
  @override
  List<Object?> get props => [];
}
