import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/backbone/bloc_status.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/auth/auth_bloc.dart';
import 'package:mint/presentation/bloc/pin/pin_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/loading_indicator.dart';

import 'package:mint/presentation/widget/pin_keyboard.dart';
import 'package:mint/presentation/widget/pinput_field.dart';
import 'package:mint/theme/text_styles.dart';

@RoutePage()
class PinInputPage extends StatefulWidget {
  const PinInputPage({super.key, this.pin});
  final String? pin;

  @override
  State<PinInputPage> createState() => _PinInputPageState();
}

class _PinInputPageState extends State<PinInputPage> {
  TextEditingController controller = TextEditingController();

  final _authBloc = sl<AuthBloc>();
  final _pinBloc = sl<PinBloc>();

  @override
  void initState() {
    super.initState();
    controller.clear();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: BlocBuilder<AuthBloc, AuthState>(
        bloc: _authBloc,
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            loading: () => const CustomLoadingIndicator(),
            authenticated: (user) {
              return BlocConsumer<PinBloc, PinState>(
                listener: (context, state) {
                  print(state.status);
                  if (state.status == PinStatus.pinEntered) {
                    context.router.navigate(const NavigationRoute());
                  }
                },
                bloc: _pinBloc,
                builder: (context, state) {
                  return Center(
                    child: Padding(
                      padding: EdgeInsets.only(right: 46.w, left: 46.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 15.h),
                            child: Text(
                              state.userPin != null &&
                                      state.status == PinStatus.enterCurrentPin
                                  ? AppLocalizations.of(context)!.enterCurrentPin
                                  : state.status == PinStatus.confirmPin
                                      ? AppLocalizations.of(context)!.confirmPin
                                      : state.status == PinStatus.noPin
                                          ? AppLocalizations.of(context)
                                              !.enterNewPin
                                          : state.status == PinStatus.pinEntered
                                              ? AppLocalizations.of(context)
                                                  !.enterCurrentPin
                                              : '',
                              style: TextStyles.headline.copyWith(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                          PinInputField(
                            validPin: state.userPin,
                            controller: controller,
                            completionCallback: () {
                              if (state.status == PinStatus.enterCurrentPin &&
                                  controller.text == state.userPin) {
                                _pinBloc
                                    .add(EnterUserPinEvent(controller.text));
                                context.router
                                    .navigate(const NavigationRoute());
                              } else if (state.status == PinStatus.noPin &&
                                  controller.text.isNotEmpty) {
                                _pinBloc
                                    .add(ConfirmUserPinEvent(controller.text));
                                controller.clear();
                              } else if (state.status == PinStatus.confirmPin &&
                                  controller.text == widget.pin) {
                                _pinBloc.add(SetNewPinEvent(controller.text));
                              } else if (state.status == PinStatus.pinEntered &&
                                  controller.text == state.userPin) {
                                _pinBloc.add(const ResetUserPinEvent());
                                controller.clear();
                              }
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 71.h),
                            child: PinKeyboard(controller: controller),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
