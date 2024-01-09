import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:pedidos/presentation/mas_screen/models/mas_model.dart';part 'mas_event.dart';part 'mas_state.dart';/// A bloc that manages the state of a Mas according to the event that is dispatched to it.
class MasBloc extends Bloc<MasEvent, MasState> {MasBloc(MasState initialState) : super(initialState) { on<MasInitialEvent>(_onInitialize); }

_onInitialize(MasInitialEvent event, Emitter<MasState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); } 
 }
