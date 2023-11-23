import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/backbone/utils.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/auth/auth_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/loading_indicator.dart';
import 'package:mint/presentation/widget/phone_number_textfield.dart';
import 'package:mint/presentation/widget/sign_button.dart';
import 'package:mint/presentation/widget/sign_up_in_change_button.dart';
import 'package:mint/presentation/widget/signup_hint_text.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController phoneNumberController = TextEditingController();
  bool isPhoneNumberValid = false;
  bool submitted = false;
  bool isSignInSelected = false;

  final _bloc = sl<AuthBloc>();

  @override
  void dispose() {
    phoneNumberController.dispose();

    super.dispose();
  }

  void validatePhoneNumber(String? value) {
    setState(() {
      isPhoneNumberValid = isValidPhoneNumber(value);
      submitted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: BlocBuilder<AuthBloc, AuthState>(
        bloc: _bloc,
        builder: (context, state) {
          return state.maybeWhen(
            error: (error) => Center(child: Text(error)),
            loading: () => const CustomLoadingIndicator(),
            unauthenticated: () {
              return Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: ToggleSignButton(
                        isSignInSelected: isSignInSelected,
                        callback: () => setState(() {
                          isSignInSelected = !isSignInSelected;
                        }),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          isSignInSelected
                              ? AppLocalizations.of(context)!.signIn
                              : AppLocalizations.of(context)!.signUp,
                          style: TextStyles.largeTitle
                              .copyWith(color: Theme.of(context).primaryColor),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 44.h,
                            bottom:
                                !isPhoneNumberValid && submitted ? 8.h : 16.h,
                          ),
                          child: PhoneNumberTextField(
                            isSubmitted: submitted,
                            isPhoneNumberValid: isPhoneNumberValid,
                            controller: phoneNumberController,
                            callback: (value) {
                              if (value.length >= 13) {
                                validatePhoneNumber(value);
                              }
                              if (submitted) {
                                validatePhoneNumber(value);
                              }
                            },
                          ),
                        ),
                        if (!isPhoneNumberValid && submitted)
                          Padding(
                            padding: EdgeInsets.only(bottom: 14.h),
                            child: Text(
                              AppLocalizations.of(context)!.wrongNumber,
                              style: TextStyles.caption1
                                  .copyWith(color: Palette.whiteErrorRed),
                            ),
                          ),
                        SignButton(
                          isPhoneNumberValid: isPhoneNumberValid,
                          isSignInSelected: isSignInSelected,
                          callback: () {
                            _bloc.add(
                              SignUpWithNumberEvent(
                                phoneNumberController.text,
                              ),
                            );
                            context.router.push(
                              CodeRoute(
                                phoneNumber: phoneNumberController.text,
                              ),
                            );
                          },
                        ),
                        const SignUpHintText()
                      ],
                    ),
                  ),
                ],
              );
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
