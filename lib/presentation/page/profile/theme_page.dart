import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/backbone/di.dart';

import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/theme/theme_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/back_button.dart';
import 'package:mint/presentation/widget/profile_subpage_header.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

@RoutePage()
class ThemePage extends StatefulWidget {
  const ThemePage({super.key});

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  final _bloc = sl<ThemeBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(const GetThemeEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      bloc: _bloc,
      builder: (context, state) {
        return state.when(
          appTheme: (isDarkTheme, themeData) {
            return Scaffold(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              appBar: AppBar(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                elevation: 0,
                leadingWidth: 75.w,
                leading: CustomBackButton(
                  callback: () => context.router.navigate(const ProfileRoute()),
                ),
              ),
              body: BlocBuilder<ThemeBloc, ThemeState>(
                bloc: _bloc,
                builder: (context, state) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProfileSubpageHeader(
                          text: AppLocalizations.of(context)!.chooseTheme,
                        ),
                        Container(
                          padding: const EdgeInsets.all(16),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.r)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                isDarkTheme
                                    ? AppLocalizations.of(context)!.dark
                                    : AppLocalizations.of(context)!.light,
                                style: TextStyles.body.copyWith(
                                  fontSize: 16.sp,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              Switch.adaptive(
                                  activeColor: isDarkTheme
                                      ? Palette.mainBlue
                                      : Palette.blackSecondary,
                                  value: isDarkTheme,
                                  onChanged: (value) {
                                    _bloc.add(
                                      SetDarkThemeEvent(isDark: !isDarkTheme),
                                    );
                                  },)
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            );
          },
          initial: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
