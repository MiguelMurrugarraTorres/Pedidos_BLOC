// ignore_for_file: must_be_immutable

part of 'cobrar_bloc.dart';

/// Represents the state of Cobrar in the application.
class CobrarState extends Equatable {
  CobrarState({
    this.searchController,
    this.cobrarModelObj,
  });

  TextEditingController? searchController;

  CobrarModel? cobrarModelObj;

  @override
  List<Object?> get props => [
        searchController,
        cobrarModelObj,
      ];
  CobrarState copyWith({
    TextEditingController? searchController,
    CobrarModel? cobrarModelObj,
  }) {
    return CobrarState(
      searchController: searchController ?? this.searchController,
      cobrarModelObj: cobrarModelObj ?? this.cobrarModelObj,
    );
  }
}
