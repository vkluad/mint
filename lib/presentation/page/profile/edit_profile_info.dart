import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/auth/auth_bloc.dart';
import 'package:mint/presentation/widget/custom_date_picker.dart';
import 'package:mint/presentation/widget/loading_indicator.dart';
import 'package:mint/presentation/widget/profile_header.dart';
import 'package:mint/presentation/widget/profile_text_fields.dart';

import 'package:mint/theme/text_styles.dart';

@RoutePage()
class EditProfileInfoPage extends StatefulWidget {
  const EditProfileInfoPage({super.key});

  @override
  State<EditProfileInfoPage> createState() => _EditProfileInfoPageState();
}

class _EditProfileInfoPageState extends State<EditProfileInfoPage> {
  final _authBloc = sl<AuthBloc>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _dateOfBirthController = TextEditingController();

  DateTime? selectedDate;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneNumberController.dispose();
    _dateOfBirthController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _authBloc.state.maybeWhen(
      orElse: () {},
      authenticated: (user) {
        if (user.dateOfBirth != null) {
          _dateOfBirthController.text =
              DateFormat('dd/MM/yyyy').format(user.dateOfBirth!);
        }
        _phoneNumberController.text = user.number;
        _firstNameController.text = user.firstName ?? '';
        _lastNameController.text = user.lastName ?? '';
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: BlocBuilder<AuthBloc, AuthState>(
          bloc: _authBloc,
          builder: (context, state) {
            return state.maybeWhen(
              authenticated: (user) {
                return ListView(
                  shrinkWrap: true,
                  children: [
                    ProfileHeader(
                      user: user,
                      isEditing: true,
                      imageCallback: () async {
                        final picker = ImagePicker();
                        final image = await picker.pickImage(
                          source: ImageSource.gallery,
                          imageQuality: 70,
                        );
                        if (image != null) {
                          _authBloc.add(
                            SetProfilePhotoEvent(File(image.path)),
                          );
                        }
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 24.h, left: 16.w),
                      child: Text(
                        AppLocalizations.of(context)!.personalData,
                        style: TextStyles.headline
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 16.h,
                      ),
                      child: ProfileTextField(
                        hintText: AppLocalizations.of(context)!.firstName,
                        controller: _firstNameController,
                        onSubmitted: (firstName) =>
                            _authBloc.add(UpdateUserFirstNameEvent(firstName)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: ProfileTextField(
                        onSubmitted: (lastName) =>
                            _authBloc.add(UpdateUserLastNameEvent(lastName)),
                        hintText: AppLocalizations.of(context)!.lastName,
                        controller: _lastNameController,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 16.h,
                      ),
                      child: ProfileTextField(
                        hintText: AppLocalizations.of(context)!.dateOfBirth,
                        isReadOnly: true,
                        dateCallback: () async {
                          await showDatePicker(
                            context: context,
                            builder: (context, child) {
                              return CustomDatePicker(
                                child: child,
                              );
                            },
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950, 12, 31),
                            lastDate: DateTime.now(),
                          ).then((value) {
                            setState(() {
                              selectedDate = value;
                              _dateOfBirthController.text =
                                  DateFormat('dd/MM/yyyy')
                                      .format(selectedDate ?? DateTime.now());
                            });
                            if (selectedDate != null) {
                              _authBloc.add(
                                UpdateUserDateEvent(
                                  selectedDate!,
                                ),
                              );
                            }
                          });
                        },
                        controller: _dateOfBirthController,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: ProfileTextField(
                        isReadOnly: true,
                        hintText: AppLocalizations.of(context)!.phoneHint,
                        controller: _phoneNumberController,
                      ),
                    ),
                  ],
                );
              },
              loading: () => const CustomLoadingIndicator(),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
