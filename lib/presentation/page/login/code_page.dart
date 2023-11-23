// ignore_for_file: lines_longer_than_80_chars

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/auth/auth_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/back_button.dart';
import 'package:mint/presentation/widget/code_sent_text.dart';
import 'package:mint/presentation/widget/custom_pinput.dart';
import 'package:mint/presentation/widget/remaining_time_text.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

@RoutePage()
class CodePage extends StatefulWidget {
  const CodePage({required this.phoneNumber, super.key});
  final String phoneNumber;
  @override
  State<CodePage> createState() => _CodePageState();
}

class _CodePageState extends State<CodePage> {
  final TextEditingController _controller = TextEditingController();
  final _bloc = sl<AuthBloc>();

  int remainingSeconds = 60;
  Timer? timer;

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  void startTimer() {
    remainingSeconds = 60;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (remainingSeconds > 0) {
          remainingSeconds--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 70.w,
        leading: CustomBackButton(
          callback: () => context.router.replace(const SignUpRoute()),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 132.h,
          right: 16.w,
          left: 16.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.enterCode,
              style: TextStyles.largeTitle
                  .copyWith(color: Theme.of(context).primaryColor),
            ),
            CodeSentText(phoneNumber: widget.phoneNumber),
            BlocBuilder<AuthBloc, AuthState>(
              bloc: _bloc,
              builder: (context, state) {
                return Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: CustomPinput(
                    color: state.maybeWhen(
                      orElse: () => Colors.transparent,
                      error: (error) => Palette.darkErrorRed,
                    ),
                    callback: (value) {
                      _bloc.add(VerifyOtpEvent(value, widget.phoneNumber));
                    },
                    controller: _controller,
                  ),
                );
              },
            ),
            BlocBuilder<AuthBloc, AuthState>(
              bloc: _bloc,
              builder: (context, state) {
                return Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: state.maybeWhen(
                        error: (error) => Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.wrongOtp,
                              style: TextStyles.hugeButton.copyWith(
                                color: Palette.whiteErrorRed,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            if (remainingSeconds == 0)
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _bloc.add(
                                      SignUpWithNumberEvent(
                                        widget.phoneNumber,
                                      ),
                                    );
                                    startTimer();
                                  });
                                },
                                child: Text(
                                  AppLocalizations.of(context)!.resendCode,
                                  style: TextStyles.hugeButton.copyWith(
                                    color: Palette.mainBlue,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            else
                              Padding(
                                padding: EdgeInsets.only(top: 12.h),
                                child: RemainingTimeText(
                                  remainingSeconds: remainingSeconds,
                                ),
                              )
                          ],
                        ),
                        orElse: () {
                          return GestureDetector(
                            onTap: () => _bloc.add(
                              SignUpWithNumberEvent(
                                widget.phoneNumber,
                              ),
                            ),
                            child: remainingSeconds != 0
                                ? Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 32.h),
                                      child: RemainingTimeText(
                                        remainingSeconds: remainingSeconds,
                                      ),
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _bloc.add(
                                          SignUpWithNumberEvent(
                                            widget.phoneNumber,
                                          ),
                                        );
                                        startTimer();
                                      });
                                    },
                                    child: Text(
                                      AppLocalizations.of(context)!.resendCode,
                                      style: TextStyles.hugeButton.copyWith(
                                        color: Palette.mainBlue,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
