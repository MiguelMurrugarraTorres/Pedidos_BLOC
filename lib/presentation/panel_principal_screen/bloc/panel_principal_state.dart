// ignore_for_file: must_be_immutable

part of 'panel_principal_bloc.dart';

/// Represents the state of PanelPrincipal in the application.
class PanelPrincipalState extends Equatable {
  PanelPrincipalState({this.panelPrincipalModelObj});

  PanelPrincipalModel? panelPrincipalModelObj;

  @override
  List<Object?> get props => [
        panelPrincipalModelObj,
      ];
  PanelPrincipalState copyWith({PanelPrincipalModel? panelPrincipalModelObj}) {
    return PanelPrincipalState(
      panelPrincipalModelObj:
          panelPrincipalModelObj ?? this.panelPrincipalModelObj,
    );
  }
}
