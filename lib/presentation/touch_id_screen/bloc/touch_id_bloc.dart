import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:pedidos/presentation/touch_id_screen/models/touch_id_model.dart';part 'touch_id_event.dart';part 'touch_id_state.dart';/// A bloc that manages the state of a TouchId according to the event that is dispatched to it.
class TouchIdBloc extends Bloc<TouchIdEvent, TouchIdState> {TouchIdBloc(TouchIdState initialState) : super(initialState) { on<TouchIdInitialEvent>(_onInitialize); }

_onInitialize(TouchIdInitialEvent event, Emitter<TouchIdState> emit, ) async  {  } 
 }
