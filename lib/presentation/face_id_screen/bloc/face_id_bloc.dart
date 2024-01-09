import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:pedidos/presentation/face_id_screen/models/face_id_model.dart';part 'face_id_event.dart';part 'face_id_state.dart';/// A bloc that manages the state of a FaceId according to the event that is dispatched to it.
class FaceIdBloc extends Bloc<FaceIdEvent, FaceIdState> {FaceIdBloc(FaceIdState initialState) : super(initialState) { on<FaceIdInitialEvent>(_onInitialize); }

_onInitialize(FaceIdInitialEvent event, Emitter<FaceIdState> emit, ) async  {  } 
 }
