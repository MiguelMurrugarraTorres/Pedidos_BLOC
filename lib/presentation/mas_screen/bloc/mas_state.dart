// ignore_for_file: must_be_immutable

part of 'mas_bloc.dart';

/// Represents the state of Mas in the application.
class MasState extends Equatable {
  MasState({
    this.searchController,
    this.masModelObj,
  });

  TextEditingController? searchController;

  MasModel? masModelObj;

  @override
  List<Object?> get props => [
        searchController,
        masModelObj,
      ];
  MasState copyWith({
    TextEditingController? searchController,
    MasModel? masModelObj,
  }) {
    return MasState(
      searchController: searchController ?? this.searchController,
      masModelObj: masModelObj ?? this.masModelObj,
    );
  }
}
