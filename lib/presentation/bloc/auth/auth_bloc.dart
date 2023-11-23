import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mint/domain/entity/user.dart' as user_entity;
import 'package:mint/domain/usecases/get_currect_user_id_usecase.dart';
import 'package:mint/domain/usecases/set_profile_photo_usecase.dart';
import 'package:mint/domain/usecases/sign_out_usecase.dart';
import 'package:mint/domain/usecases/sign_up_usecase.dart';
import 'package:mint/domain/usecases/update_user_date.dart';
import 'package:mint/domain/usecases/update_user_first_name.dart';
import 'package:mint/domain/usecases/update_user_last_name.dart';
import 'package:mint/domain/usecases/verify_otp_usecase.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    this._signUpWithNumberUseCase,
    this._verifyOtpUseCase,
    this._signOutUseCase,
    this._getCurrentUserUseCase,
    this._updateUserDateUseCase,
    this._updateUserLastNameUseCase,
    this._updateUserFirstNameUseCase,
    this._setProfilePhotoUseCase,
  ) : super(const UnAuthenticated()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        setProfilePhoto: (file) async {
          await _setProfilePhoto(file, emit);
        },
        updateUserDate: (date) async {
          await _updateUserDate(date);
        },
        updateUserFirstName: (firstName) async {
          await _updateUserFirstName(firstName);
        },
        updateUserLastName: (lastName) async {
          await _updateUserLastName(lastName);
        },
        signOut: () async {
          await _signOut(emit);
        },
        getCurrentUserId: () async {
          await _getCurrentUser(emit);
        },
        signUpWithNumber: (String phoneNumber) async {
          await _signInWithNumber(emit, phoneNumber);
        },
        verifyOtp: (String userOtp, String phoneNumber) async {
          await _verifyOtp(emit, userOtp, phoneNumber);
        },
      );
    });
  }
  final UpdateUserDateUseCase _updateUserDateUseCase;
  final UpdateUserLastNameUseCase _updateUserLastNameUseCase;
  final UpdateUserFirstNameUseCase _updateUserFirstNameUseCase;
  final SignUpUseCase _signUpWithNumberUseCase;
  final VerifyOtpUseCase _verifyOtpUseCase;
  final SignOutUseCase _signOutUseCase;
  final GetCurrentUserUseCase _getCurrentUserUseCase;
  final SetProfilePhotoUseCase _setProfilePhotoUseCase;

  Future<void> _signInWithNumber(
    Emitter<AuthState> emit,
    String phoneNumber,
  ) async {
    try {
      await _signUpWithNumberUseCase(phoneNumber);
    } catch (e) {
      emit(_Error(e.toString()));
      throw Exception(e);
    }
  }

  Future<void> _setProfilePhoto(
    File file,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const _Loading());
      await _setProfilePhotoUseCase
          .call(file)
          .then((_) => _getCurrentUser(emit));
    } catch (e) {
      emit(_Error(e.toString()));
      throw Exception(e);
    }
  }

  Future<void> _verifyOtp(
    Emitter<AuthState> emit,
    String userOtp,
    String phoneNumber,
  ) async {
    try {
      emit(const _Loading());
      await _verifyOtpUseCase(userOtp, phoneNumber)
          .then((user) => emit(Authenticated(user)));
    } catch (e) {
      emit(_Error(e.toString()));
      throw Exception(e);
    }
  }

  Future<void> _updateUserDate(
    DateTime date,
  ) async {
    await _updateUserDateUseCase.call(
      date,
    );
  }

  Future<void> _updateUserFirstName(
    String firstName,
  ) async {
    await _updateUserFirstNameUseCase.call(
      firstName,
    );
  }

  Future<void> _updateUserLastName(
    String lastName,
  ) async {
    await _updateUserLastNameUseCase.call(
      lastName,
    );
  }

  Future<void> _signOut(
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const _Loading());
      await _signOutUseCase().then((_) => emit(const UnAuthenticated()));
    } catch (e) {
      emit(_Error(e.toString()));
      throw Exception(e);
    }
  }

  Future<void> _getCurrentUser(
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const _Loading());
      await emit.forEach(
        _getCurrentUserUseCase(),
        onData: (data) {
          return Authenticated(data);
        },
      );
    } catch (e) {
      emit(_Error(e.toString()));
      throw Exception(e);
    }
  }
}
