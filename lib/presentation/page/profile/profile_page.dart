import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/auth/auth_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/loading_indicator.dart';
import 'package:mint/presentation/widget/profile_button.dart';
import 'package:mint/presentation/widget/profile_header.dart';

import 'package:mint/theme/text_styles.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _authBloc = sl<AuthBloc>();

  @override
  void initState() {
    _authBloc.add(const GetCurrentUserIdEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<AuthBloc, AuthState>(
        bloc: _authBloc,
        builder: (context, state) {
          return state.when(
            unauthenticated: () {
              return Text(AppLocalizations.of(context)!.unauthenticated);
            },
            loading: () => const CustomLoadingIndicator(),
            authenticated: (user) {
              return Column(
                children: [
                  ProfileHeader(
                    user: user,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: ProfileButton(
                      isGroupped: true,
                      svgPicture: SvgPicture.asset(
                        Assets.svg.personal,
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).primaryColor,
                          BlendMode.srcIn,
                        ),
                      ),
                      callback: () {
                        context.router.navigate(const EditProfileInfoRoute());
                      },
                      buttonText: AppLocalizations.of(context)!.personalData,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => context.router.navigate(
                      PinInputRoute(),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(8.r),
                          ),
                        ),
                        padding: const EdgeInsets.only(
                          left: 16,
                          top: 16,
                          bottom: 16,
                          right: 7,
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              Assets.svg.pin,
                              colorFilter: ColorFilter.mode(
                                Theme.of(context).primaryColor,
                                BlendMode.srcIn,
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              AppLocalizations.of(context)!.changePin,
                              style: TextStyles.title3.copyWith(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            const Spacer(),
                            const Icon(Icons.chevron_right)
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(padding: EdgeInsets.only(bottom: 16.h)),
                  ProfileButton(
                    svgPicture: SvgPicture.asset(
                      Assets.svg.credit,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).primaryColor,
                        BlendMode.srcIn,
                      ),
                    ),
                    callback: () =>
                        context.router.navigate(const ProfileCardsRoute()),
                    buttonText: AppLocalizations.of(context)!.myCreditCards,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: ProfileButton(
                      svgPicture: SvgPicture.asset(
                        Assets.svg.profileFav,
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).primaryColor,
                          BlendMode.srcIn,
                        ),
                      ),
                      callback: () => context.router
                          .navigate(const FavouriteDoctorsRoute()),
                      buttonText: AppLocalizations.of(context)!.favouriteDoctors,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: ProfileButton(
                      svgPicture: SvgPicture.asset(
                        Assets.svg.theme,
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).primaryColor,
                          BlendMode.srcIn,
                        ),
                      ),
                      callback: () =>
                          context.router.navigate(const ThemeRoute()),
                      buttonText: AppLocalizations.of(context)!.colorTheme,
                    ),
                  ),
                  ProfileButton(
                    svgPicture: SvgPicture.asset(
                      Assets.svg.profileNotification,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).primaryColor,
                        BlendMode.srcIn,
                      ),
                    ),
                    callback: () => context.router
                        .navigate(const NotificationSettingsRoute()),
                    buttonText: AppLocalizations.of(context)!.notifications,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 16.h, top: 12.h),
                    child: ProfileButton(
                      svgPicture: SvgPicture.asset(
                        Assets.svg.logout,
                      ),
                      isLogoutButton: true,
                      callback: () {
                        _authBloc.add(const SignOutEvent());
                      },
                      buttonText: AppLocalizations.of(context)!.logout,
                    ),
                  )
                ],
              );
            },
            error: (error) {
              return Text(error);
            },
          );
        },
      ),
    );
  }
}
