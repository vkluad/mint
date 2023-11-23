import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/domain/usecases/get_doctors_usecase.dart';
import 'package:mint/domain/usecases/mark_as_favorite_usecase.dart';
import 'package:mint/domain/usecases/remove_from_favourites_usecase.dart';

part 'doctor_event.dart';
part 'doctor_state.dart';
part 'doctor_bloc.freezed.dart';

class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  DoctorBloc(
    this._getDoctorsUseCase,
    this._markAsFavouriteUseCase,
    this._removeFromFavouritesUseCase,
  ) : super(const _Initial()) {
    on<DoctorEvent>((event, emit) async {
      await event.when(
        markAsFavourite: (doctorId) async {
          await _markAsFavourite(doctorId);
        },
        removeFromFavourites: (doctorId) async {
          await _removeFromFavourites(doctorId);
        },
        getDoctors: () async {
          await _getDoctors(emit);
        },
      );
    });
  }

  final GetDoctorsUseCase _getDoctorsUseCase;
  final MarkAsFavouriteUseCase _markAsFavouriteUseCase;
  final RemoveFromFavouritesUseCase _removeFromFavouritesUseCase;

  Future<void> _markAsFavourite(String doctorId) async {
    await _markAsFavouriteUseCase.call(doctorId);
  }

  Future<void> _removeFromFavourites(String doctorId) async {
    await _removeFromFavouritesUseCase.call(doctorId);
  }

  Future<void> _getDoctors(Emitter<DoctorState> emit) async {
    emit(const _Loading());
    try {
      await _getDoctorsUseCase.call().forEach((doctors) {
        final loadedDoctors = <Doctor>[];
        for (final doctor in doctors) {
          loadedDoctors.add(doctor);
        }
        emit(Loaded(loadedDoctors));
      });
    } catch (e) {
      emit(_Error(e.toString()));
      throw Exception(e);
    }
  }
}
