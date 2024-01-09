import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:pedidos/presentation/menu_seguridad_screen/models/menu_seguridad_model.dart';part 'menu_seguridad_event.dart';part 'menu_seguridad_state.dart';/// A bloc that manages the state of a MenuSeguridad according to the event that is dispatched to it.
class MenuSeguridadBloc extends Bloc<MenuSeguridadEvent, MenuSeguridadState> {MenuSeguridadBloc(MenuSeguridadState initialState) : super(initialState) { on<MenuSeguridadInitialEvent>(_onInitialize); }

_onInitialize(MenuSeguridadInitialEvent event, Emitter<MenuSeguridadState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController()));Future.delayed(const Duration(milliseconds: 3000), (){
NavigatorService.popAndPushNamed(AppRoutes.pantallaDeInicioScreen, );}); } 
 }
