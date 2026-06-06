import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse/shared/presentation/blocs/app_user/app_user_bloc.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/widgets/app_avatar.dart';

class PostUserSection extends StatelessWidget {
  const PostUserSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppUserBloc, AppUserState>(
      builder: (context, state) {
        return state.maybeWhen(
          authenticated: (profile) => Row(
            children: [
              AppAvatar(url: profile.avatarUrl, radius: 24),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    profile.displayName,
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: .bold,
                    ),
                  ),
                  Text(
                    '@${profile.username.toLowerCase()}',
                    style: context.textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
