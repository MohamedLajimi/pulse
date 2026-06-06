import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/core/router/route_names.dart';
import 'package:pulse/shared/presentation/blocs/app_user/app_user_bloc.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';
import 'package:pulse/core/widgets/app_snack_bar.dart';
import 'package:pulse/core/widgets/app_alert_dialog.dart';
import 'package:pulse/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:pulse/features/profile/widgets/profile_menu_header.dart';
import 'package:pulse/features/profile/widgets/profile_menu_tile.dart';

class ProfileMenuPage extends StatelessWidget {
  const ProfileMenuPage({super.key});

  void _showComingSoon(BuildContext context) {
    AppSnackBar.show(
      context,
      message: 'This feature is coming soon!',
      type: SnackBarType.info,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppUserBloc, AppUserState>(
        builder: (context, state) {
          final profile = state.whenOrNull(authenticated: (profile) => profile);

          if (profile == null) {
            return const AppLoadingIndicator();
          }

          return ListView(
            padding: const .fromLTRB(16, 48, 16, 32),
            children: [
              ProfileMenuHeader(profile: profile),

              const SizedBox(height: 24),

              _buildSectionHeader(context, 'Account'),
              ProfileMenuTile(
                icon: CupertinoIcons.pencil,
                title: 'Edit Profile',
                onTap: () => context.pushNamed(
                  RouteNames.editProfile,
                  pathParameters: {'userId': profile.id},
                ),
              ),
              ProfileMenuTile(
                icon: CupertinoIcons.bookmark,
                title: 'Saved Posts',
                onTap: () => _showComingSoon(context),
              ),

              const SizedBox(height: 24),

              _buildSectionHeader(context, 'Privacy & Settings'),
              ProfileMenuTile(
                icon: CupertinoIcons.settings,
                title: 'App Settings',
                onTap: () => _showComingSoon(context),
              ),
              ProfileMenuTile(
                icon: CupertinoIcons.hand_raised,
                title: 'Blocked Users',
                onTap: () => _showComingSoon(context),
              ),
              ProfileMenuTile(
                icon: CupertinoIcons.flag,
                title: 'Reports History',
                onTap: () => _showComingSoon(context),
              ),

              const SizedBox(height: 24),

              _buildSectionHeader(context, 'Danger Zone'),
              ProfileMenuTile(
                icon: CupertinoIcons.arrow_right_square,
                title: 'Log Out',
                isDestructive: true,
                onTap: () {
                  _showLogoutDialog(context);
                },
              ),

              const SizedBox(height: 40),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const .only(left: 8, bottom: 8),
      child: Text(
        title.toUpperCase(),
        style: context.textTheme.labelMedium?.copyWith(
          color: context.colorScheme.secondary,
          fontWeight: .bold,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    AppAlertDialog.show(
      context: context,
      icon: CupertinoIcons.arrow_right_square,
      title: 'Log Out',
      message: 'Are you sure you want to log out of your account?',
      primaryButtonText: 'Log Out',
      isDestructive: true,
      onPrimaryPressed: () async {
        context.read<AuthBloc>().add(const AuthEvent.signOutRequested());
      },
    );
  }
}
