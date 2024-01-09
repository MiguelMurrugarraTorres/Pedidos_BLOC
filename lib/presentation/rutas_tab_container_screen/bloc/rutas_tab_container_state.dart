// ignore_for_file: must_be_immutable

part of 'rutas_tab_container_bloc.dart';

/// Represents the state of RutasTabContainer in the application.
class RutasTabContainerState extends Equatable {
  RutasTabContainerState({this.rutasTabContainerModelObj});

  RutasTabContainerModel? rutasTabContainerModelObj;

  @override
  List<Object?> get props => [
        rutasTabContainerModelObj,
      ];
  RutasTabContainerState copyWith(
      {RutasTabContainerModel? rutasTabContainerModelObj}) {
    return RutasTabContainerState(
      rutasTabContainerModelObj:
          rutasTabContainerModelObj ?? this.rutasTabContainerModelObj,
    );
  }
}
