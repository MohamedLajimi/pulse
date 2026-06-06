import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/core/di/service_locator.dart';
import 'package:pulse/core/router/main_scaffold.dart';
import 'package:pulse/core/router/route_names.dart';
import 'package:pulse/core/widgets/loading_page.dart';
import 'package:pulse/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:pulse/features/auth/presentation/pages/forgot_password_page.dart';
import 'package:pulse/features/auth/presentation/pages/sign_in_page.dart';
import 'package:pulse/features/auth/presentation/pages/sign_up_page.dart';
import 'package:pulse/features/comment/presentation/comment_actions_bloc/comment_actions_bloc.dart';
import 'package:pulse/features/comment/presentation/comment_input_cubit/comment_input_cubit.dart';
import 'package:pulse/features/comment/presentation/comments_bloc/comments_bloc.dart';
import 'package:pulse/features/comment/presentation/comments_replies_bloc/comment_replies_bloc.dart';
import 'package:pulse/features/comment/presentation/pages/comments_page.dart';
import 'package:pulse/features/hashtag/hashtag_feed_bloc/hashtag_feed_bloc.dart';
import 'package:pulse/features/hashtag/pages/hashtag_feed_page.dart';
import 'package:pulse/shared/presentation/blocs/app_user/app_user_bloc.dart';
import 'package:pulse/features/auth/presentation/bloc/profile_setup_bloc/profile_setup_bloc.dart';
import 'package:pulse/features/auth/presentation/pages/profile_setup_page.dart';
import 'package:pulse/features/search/presentation/bloc/search_bloc.dart';
import 'package:pulse/features/search/presentation/pages/search_page.dart';
import 'package:pulse/features/post/bloc/post_form/post_form_bloc.dart';
import 'package:pulse/features/post/bloc/post_management/post_management_bloc.dart';
import 'package:pulse/features/post/pages/post_management_page.dart';
import 'package:pulse/features/profile/bloc/profile_detail/profile_detail_bloc.dart';
import 'package:pulse/features/profile/bloc/edit_profile/edit_profile_bloc.dart';
import 'package:pulse/features/profile/pages/edit_profile_page.dart';
import 'package:pulse/features/profile/bloc/profile_media/profile_media_bloc.dart';
import 'package:pulse/features/profile/bloc/profile_posts/profile_posts_bloc.dart';
import 'package:pulse/features/profile/pages/profile_detail_page.dart';
import 'package:pulse/features/profile/pages/profile_menu_page.dart';
import 'package:pulse/shared/presentation/blocs/post_likers/post_likers_bloc.dart';
import 'package:pulse/shared/presentation/blocs/profile_connections/profile_connections_bloc.dart';
import 'package:pulse/shared/presentation/pages/post_likers_page.dart';
import 'package:pulse/shared/presentation/pages/profile_connections_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter appRouter({required AppUserBloc appUserBloc}) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    debugLogDiagnostics: false,
    refreshListenable: GoRouterRefreshStream(appUserBloc.stream),
    redirect: (context, state) {
      final userState = appUserBloc.state;
      final currentPath = state.matchedLocation;

      const authPaths = ['/sign-in', '/sign-up', '/forgot-password'];
      final isOnAuthPage = authPaths.contains(currentPath);

      return userState.maybeMap(
        loading: (_) => '/',
        unauthenticated: (_) => isOnAuthPage ? null : '/sign-in',
        profileRequired: (_) =>
            currentPath == '/profile-setup' ? null : '/profile-setup',
        authenticated: (_) {
          return (isOnAuthPage ||
                  currentPath == '/profile-setup' ||
                  currentPath == '/')
              ? '/feed'
              : null;
        },
        orElse: () => null,
      );
    },
    routes: [
      // ── Loading ────────────────────────────────────────────────
      GoRoute(
        path: '/',
        name: RouteNames.loading,
        builder: (context, state) => const LoadingPage(),
      ),
      // ── Auth ────────────────────────────────────────────────
      GoRoute(
        path: '/sign-in',
        name: RouteNames.signIn,
        builder: (context, state) => BlocProvider(
          create: (context) => sl<AuthBloc>(),
          child: const SignInPage(),
        ),
      ),
      GoRoute(
        path: '/sign-up',
        name: RouteNames.signUp,
        builder: (context, state) => BlocProvider(
          create: (context) => sl<AuthBloc>(),
          child: const SignUpPage(),
        ),
      ),
      GoRoute(
        path: '/forgot-password',
        name: RouteNames.forgotPassword,
        builder: (context, state) => BlocProvider(
          create: (context) => sl<AuthBloc>(),
          child: const ForgotPasswordPage(),
        ),
      ),

      // ── Onboarding ─────────────────────────────────────────
      GoRoute(
        path: '/profile-setup',
        name: RouteNames.profileSetup,
        builder: (context, state) => BlocProvider(
          create: (context) => sl<ProfileSetupBloc>(),
          child: const ProfileSetupPage(),
        ),
      ),

      // ── Main Shell (bottom nav) ────────────────────────────
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNavBar(navigationShell: navigationShell);
        },
        branches: [
          // ── Feed Branch ──
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/feed',
                name: RouteNames.feed,
                builder: (context, state) => const _Placeholder(title: 'Feed'),
              ),
            ],
          ),
          // ── Search Branch ──
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/search',
                name: RouteNames.search,
                builder: (context, state) => BlocProvider(
                  create: (context) => sl<SearchBloc>(),
                  child: const SearchPage(),
                ),
              ),
            ],
          ),
          // ── Create Post Branch ──
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/create-post',
                name: RouteNames.createPost,
                builder: (context, state) => MultiBlocProvider(
                  providers: [
                    BlocProvider(create: (context) => sl<PostManagementBloc>()),
                    BlocProvider(create: (context) => sl<PostFormBloc>()),
                  ],
                  child: const PostManagementPage(),
                ),
              ),
            ],
          ),
          // ── Conversations Branch ──
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/conversations',
                name: RouteNames.conversations,
                builder: (context, state) =>
                    const _Placeholder(title: 'Messages'),
                routes: [
                  GoRoute(
                    path: ':conversationId',
                    name: RouteNames.chat,
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) =>
                        const _Placeholder(title: 'Chat'),
                  ),
                ],
              ),
            ],
          ),
          // ── Profile Branch ──
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                name: RouteNames.profile,
                builder: (context, state) => BlocProvider(
                  create: (context) => sl<AuthBloc>(),
                  child: const ProfileMenuPage(),
                ),
                routes: [
                  GoRoute(
                    path: ':userId/edit',
                    name: RouteNames.editProfile,
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) {
                      final userId = state.pathParameters['userId']!;

                      return BlocProvider(
                        create: (_) =>
                            sl<EditProfileBloc>()..add(FetchProfile(userId)),
                        child: EditProfilePage(userId: userId),
                      );
                    },
                  ),
                  GoRoute(
                    path: 'settings',
                    name: RouteNames.settings,
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) =>
                        const _Placeholder(title: 'Settings'),
                    routes: [
                      GoRoute(
                        path: 'blocked-users',
                        name: RouteNames.blockedUsers,
                        parentNavigatorKey: _rootNavigatorKey,
                        builder: (context, state) =>
                            const _Placeholder(title: 'Blocked Users'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),

      // ── Global Detail Routes (reachable from ANY branch) ───
      GoRoute(
        path: '/user/:userId',
        name: RouteNames.userProfile,
        builder: (context, state) {
          final userId = state.pathParameters['userId']!;
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) =>
                    sl<ProfileDetailBloc>()
                      ..add(ProfileDetailEvent.fetchProfile(userId)),
              ),
              BlocProvider(create: (_) => sl<ProfilePostsBloc>()),
              BlocProvider(create: (_) => sl<ProfileMediaBloc>()),
              BlocProvider(create: (_) => sl<PostManagementBloc>()),
            ],
            child: ProfileDetailPage(userId: userId),
          );
        },
        routes: [
          GoRoute(
            path: 'followers',
            name: RouteNames.followers,
            builder: (context, state) {
              final userId = state.pathParameters['userId']!;
              return BlocProvider(
                create: (context) => sl<ProfileConnectionsBloc>(),
                child: ProfileConnectionsPage(
                  userId: userId,
                  connectionType: ConnectionType.followers,
                ),
              );
            },
          ),
          GoRoute(
            path: 'following',
            name: RouteNames.following,
            builder: (context, state) {
              final userId = state.pathParameters['userId']!;
              return BlocProvider(
                create: (context) => sl<ProfileConnectionsBloc>(),
                child: ProfileConnectionsPage(
                  userId: userId,
                  connectionType: ConnectionType.following,
                ),
              );
            },
          ),
        ],
      ),
      GoRoute(
        path: '/post/:postId/edit',
        name: RouteNames.editPost,
        builder: (context, state) {
          final postId = state.pathParameters['postId']!;
          return MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => sl<PostManagementBloc>()),
              BlocProvider(create: (context) => sl<PostFormBloc>()),
            ],
            child: PostManagementPage(postId: postId),
          );
        },
      ),
      GoRoute(
        path: '/post/:postId/likers',
        name: RouteNames.postLikers,
        builder: (context, state) {
          final postId = state.pathParameters['postId']!;
          return BlocProvider(
            create: (context) =>
                sl<PostLikersBloc>()..add(PostLikersEvent.fetchInitial(postId)),
            child: PostLikersPage(postId: postId),
          );
        },
      ),

      GoRoute(
        path: '/post/:postId/comments',
        name: RouteNames.comments,
        builder: (context, state) {
          final postId = state.pathParameters['postId']!;
          return MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => sl<CommentsBloc>()),
              BlocProvider(create: (_) => sl<CommentRepliesBloc>()),
              BlocProvider(create: (_) => sl<CommentActionsBloc>()),
              BlocProvider(create: (_) => sl<CommentInputCubit>()),
            ],
            child: CommentsPage(postId: postId),
          );
        },
      ),
      GoRoute(
        path: '/hashtag/:hashtag',
        name: RouteNames.hashtagFeed,
        builder: (context, state) {
          final hashtag = state.pathParameters['hashtag']!;
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) =>
                    sl<HashtagFeedBloc>()
                      ..add(HashtagFeedEvent.fetchInitial(hashtag)),
              ),
              BlocProvider(create: (context) => sl<PostManagementBloc>()),
            ],
            child: HashtagFeedPage(hashtag: hashtag),
          );
        },
      ),
      GoRoute(
        path: '/notifications',
        name: RouteNames.notifications,
        builder: (context, state) => const _Placeholder(title: 'Notifications'),
      ),
    ],
  );
}

// Placeholder page — replaced as features are built.
class _Placeholder extends StatelessWidget {
  const _Placeholder({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(title, style: Theme.of(context).textTheme.headlineMedium),
      ),
    );
  }
}

// Converts a Stream into a Listenable for GoRouter.refreshListenable.
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    _subscription = stream.asBroadcastStream().listen((_) {
      notifyListeners();
    });
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
