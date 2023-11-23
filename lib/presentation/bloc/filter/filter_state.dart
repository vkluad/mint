part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.initial() = FilterInitial;
  const factory FilterState.filtered(List<Doctor> filteredDoctors) =
      FilterFiltered;
}
