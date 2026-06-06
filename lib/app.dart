import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';

import 'package:pulse/core/di/service_locator.dart';
import 'package:pulse/core/theme/app_theme.dart';
import 'package:pulse/features/search/data/datasources/search_local_datasource.dart';
import 'package:pulse/shared/presentation/blocs/app_user/app_user_bloc.dart';

class PulseApp extends StatelessWidget {
  const PulseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppUserBloc, AppUserState>(
      listener: (context, state) {
        state.mapOrNull(
          authenticated: (state) {
            registerUserScopedDependencies(state.profile.id);
          },
          unauthenticated: (_) async {
            if (sl.isRegistered<SearchLocalDataSource>()) {
              await Hive.close();
              sl.unregister<SearchLocalDataSource>();
            }
          },
        );
      },
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: MaterialApp.router(
          title: 'Pulse',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.dark,
          routerConfig: sl<GoRouter>(),
        ),
      ),
    );
  }
}
