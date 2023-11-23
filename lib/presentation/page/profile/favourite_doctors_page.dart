import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/backbone/utils.dart';

import 'package:mint/presentation/bloc/auth/auth_bloc.dart';
import 'package:mint/presentation/bloc/doctors/doctor_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/back_button.dart';
import 'package:mint/presentation/widget/doctor_box.dart';
import 'package:mint/presentation/widget/empty_list_text.dart';
import 'package:mint/presentation/widget/loading_indicator.dart';
import 'package:mint/theme/palette.dart';

@RoutePage()
class FavouriteDoctorsPage extends StatefulWidget {
  const FavouriteDoctorsPage({super.key});

  @override
  State<FavouriteDoctorsPage> createState() => _FavouriteDoctorsPageState();
}

class _FavouriteDoctorsPageState extends State<FavouriteDoctorsPage> {
  final _doctorBloc = sl<DoctorBloc>();
  final _authBloc = sl<AuthBloc>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: CustomBackButton(
          callback: () => context.router.navigate(const ProfileRoute()),
        ),
        leadingWidth: 75.w,
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        bloc: _authBloc,
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            loading: () => const CustomLoadingIndicator(),
            authenticated: (user) {
              return SafeArea(
                child: Column(
                  children: [
                    if (user.favourites != null && user.favourites!.isNotEmpty)
                      Expanded(
                        child: SingleChildScrollView(
                          child: ColoredBox(
                            color: Palette.white,
                            child: Column(
                              children: [
                                BlocBuilder<DoctorBloc, DoctorState>(
                                  bloc: _doctorBloc,
                                  builder: (context, state) {
                                    return state.when(
                                      initial: SizedBox.shrink,
                                      loading: () =>
                                          const CustomLoadingIndicator(),
                                      error: Text.new,
                                      loaded: (doctors) {
                                        final userFavourites =
                                            user.favourites ?? [];
                                        final favouriteDoctors = doctors
                                            .where(
                                              (doctor) => userFavourites
                                                  .contains(doctor.id),
                                            )
                                            .toList();
                                        return ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              onTap: () {
                                                context.router.navigate(
                                                  DoctorDetailsRoute(
                                                    doctor:
                                                        favouriteDoctors[index],
                                                    callback: () =>
                                                        context.router.navigate(
                                                      const ProfileRoute(),
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: BlocBuilder<AuthBloc,
                                                  AuthState>(
                                                bloc: _authBloc,
                                                builder: (context, state) {
                                                  return state.maybeWhen(
                                                    authenticated: (user) {
                                                      return DoctorBox(
                                                        isFavourite:
                                                            favouriteDoctors
                                                                .any(
                                                          (favouriteDoctor) =>
                                                              favouriteDoctor
                                                                  .id ==
                                                              favouriteDoctors[
                                                                      index]
                                                                  .id,
                                                        ),
                                                        callback: () async {
                                                          await showRemoveFromFavouriteDialog(
                                                            name:
                                                                favouriteDoctors[
                                                                        index]
                                                                    .name,
                                                            context: context,
                                                            removeCallback: () {
                                                              _doctorBloc.add(
                                                                RemoveFromFavouritesEvent(
                                                                  favouriteDoctors[
                                                                          index]
                                                                      .id,
                                                                ),
                                                              );
                                                            },
                                                          );
                                                          _authBloc.add(
                                                            const GetCurrentUserIdEvent(),
                                                          );
                                                        },
                                                        doctor:
                                                            favouriteDoctors[
                                                                index],
                                                      );
                                                    },
                                                    orElse: () =>
                                                        const SizedBox.shrink(),
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                          itemCount: favouriteDoctors.length,
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    else
                      const EmptyListText()
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
