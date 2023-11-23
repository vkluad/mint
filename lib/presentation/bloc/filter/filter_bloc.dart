import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/domain/entity/filter.dart';
import 'package:mint/presentation/bloc/doctors/doctor_bloc.dart';

part 'filter_event.dart';
part 'filter_state.dart';
part 'filter_bloc.freezed.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc(
    this.doctorBloc,
  ) : super(const FilterInitial()) {
    on<FilterEvent>((event, emit) async {
      await event.when(
        apply: (filter) => filterDoctors(emit, filter),
      );
    });
  }
  final DoctorBloc doctorBloc;
  Future<void> filterDoctors(Emitter<FilterState> emit, Filter filter) async {
    var filteredDoctors = allDoctors;
    if (doctorBloc.state is Loaded) {
      final loadedState = doctorBloc.state as Loaded;

      allDoctors = loadedState.doctors;
      filteredDoctors = allDoctors
          .where(
            (doctor) =>
                doctor.price >= filter.priceRange.start &&
                doctor.price <= filter.priceRange.end,
          )
          .toList();
      if (filter.specialties.isNotEmpty) {
        filteredDoctors = filteredDoctors
            .where(
              (doctor) => filter.specialties.every(
                (specialty) => doctor.specialities!.contains(specialty),
              ),
            )
            .toList();
      }
      if (filter.experienceRange.isNotEmpty) {
        filteredDoctors = filteredDoctors.where((doctor) {
          return filter.experienceRange.any(
            (range) =>
                doctor.experience! >= range.start &&
                doctor.experience! <= range.end,
          );
        }).toList();
      }
    }
    emit(FilterFiltered(filteredDoctors));
  }

  List<Doctor> allDoctors = [];
}
