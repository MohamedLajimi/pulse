import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse/core/constants/app_constants.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/features/post/bloc/post_form/post_form_bloc.dart';

class PostMediaHeader extends StatelessWidget {
  const PostMediaHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostFormBloc, PostFormState>(
      buildWhen: (previous, current) =>
          previous.mediaList.length != current.mediaList.length,
      builder: (context, state) {
        return Padding(
          padding: const .only(top: 16.0, bottom: 8.0),
          child: Row(
            children: [
              Icon(
                CupertinoIcons.photo_on_rectangle,
                size: 20,
                color: context.colorScheme.primary,
              ),
              const SizedBox(width: 8),
              Text(
                "Media",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: .bold,
                ),
              ),
              const Spacer(),
              Text(
                '${state.mediaList.length}/${AppConstants.maxPostMedia}',
                style: context.textTheme.bodySmall?.copyWith(
                  color: state.mediaList.length >= AppConstants.maxPostMedia
                      ? context.colorScheme.error
                      : context.colorScheme.secondary,
                  fontWeight: .w600,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
