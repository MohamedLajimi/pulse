import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/features/comment/data/datasources/comment_remote_data_source.dart';
import 'package:pulse/features/comment/data/repositories/comment_repository_impl.dart';
import 'package:pulse/features/comment/domain/events/comment_event_bus.dart';
import 'package:pulse/features/comment/domain/repositories/comment_repository.dart';
import 'package:pulse/features/comment/presentation/comment_actions_bloc/comment_actions_bloc.dart';
import 'package:pulse/features/comment/presentation/comment_input_cubit/comment_input_cubit.dart';
import 'package:pulse/features/comment/presentation/comments_bloc/comments_bloc.dart';
import 'package:pulse/features/comment/presentation/comments_replies_bloc/comment_replies_bloc.dart';
import 'package:pulse/features/hashtag/hashtag_feed_bloc/hashtag_feed_bloc.dart';
import 'package:pulse/shared/domain/events/follow_event_bus.dart';
import 'package:pulse/shared/presentation/blocs/post_like/post_like_cubit.dart';
import 'package:pulse/shared/presentation/blocs/post_likers/post_likers_bloc.dart';
import 'package:pulse/shared/domain/events/post_event_bus.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:pulse/shared/presentation/blocs/app_user/app_user_bloc.dart';
import 'package:pulse/shared/presentation/blocs/follow_action/follow_action_cubit.dart';
import 'package:pulse/shared/presentation/blocs/profile_connections/profile_connections_bloc.dart';
import 'package:pulse/core/router/app_router.dart';
import 'package:pulse/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:pulse/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:pulse/features/auth/domain/repositories/auth_repository.dart';
import 'package:pulse/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:pulse/features/auth/presentation/bloc/profile_setup_bloc/profile_setup_bloc.dart';
import 'package:pulse/features/profile/bloc/profile_detail/profile_detail_bloc.dart';
import 'package:pulse/features/profile/bloc/edit_profile/edit_profile_bloc.dart';
import 'package:pulse/features/profile/bloc/profile_posts/profile_posts_bloc.dart';
import 'package:pulse/features/profile/bloc/profile_media/profile_media_bloc.dart';
import 'package:pulse/features/search/presentation/bloc/search_bloc.dart';
import 'package:pulse/features/search/data/datasources/search_local_datasource.dart';
import 'package:pulse/features/search/data/datasources/search_remote_datasource.dart';
import 'package:pulse/features/search/data/repositories/search_repository_impl.dart';
import 'package:pulse/features/search/domain/repositories/search_repository.dart';
import 'package:pulse/shared/data/datasources/profile_remote_datasource.dart';
import 'package:pulse/shared/data/datasources/post_management_remote_datasource.dart';
import 'package:pulse/shared/data/datasources/post_like_remote_datasource.dart';
import 'package:pulse/shared/data/repositories/profile_repository_impl.dart';
import 'package:pulse/shared/data/repositories/post_management_repository_impl.dart';
import 'package:pulse/shared/data/repositories/post_like_repository_impl.dart';
import 'package:pulse/shared/domain/repositories/profile_repository.dart';
import 'package:pulse/shared/domain/repositories/post_management_repository.dart';
import 'package:pulse/shared/domain/repositories/post_like_repository.dart';
import 'package:pulse/shared/data/datasources/follow_remote_datasource.dart';
import 'package:pulse/shared/data/repositories/follow_repository_impl.dart';
import 'package:pulse/shared/domain/repositories/follow_repository.dart';
import 'package:pulse/features/post/bloc/post_management/post_management_bloc.dart';
import 'package:pulse/features/post/bloc/post_form/post_form_bloc.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  sl.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);
  sl.registerLazySingleton(() => PostEventBus());
  sl.registerLazySingleton(() => FollowEventBus());

  _registerAuth();
  _registerProfile();
  _registerSearch();
  _registerFollow();
  _registerPost();
  _registerRouter();
  _registerComments();

  sl.registerLazySingleton(
    () => AppUserBloc(authRepository: sl(), profileRepository: sl()),
  );
}

void _registerAuth() {
  sl
    ..registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(sl()),
    )
    ..registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()))
    ..registerFactory<AuthBloc>(() => AuthBloc(sl()));
}

void _registerProfile() {
  sl
    ..registerLazySingleton<ProfileRemoteDataSource>(
      () => ProfileRemoteDataSourceImpl(sl()),
    )
    ..registerLazySingleton<ProfileRepository>(
      () => ProfileRepositoryImpl(sl()),
    )
    ..registerFactory<ProfileSetupBloc>(
      () => ProfileSetupBloc(authRepository: sl(), profileRepository: sl()),
    )
    ..registerFactory<ProfileDetailBloc>(
      () => ProfileDetailBloc(sl(), sl(), sl()),
    )
    ..registerFactory<ProfilePostsBloc>(() => ProfilePostsBloc(sl(), sl()))
    ..registerFactory<EditProfileBloc>(() => EditProfileBloc(sl()))
    ..registerFactory<ProfileMediaBloc>(() => ProfileMediaBloc(sl()));
}

void _registerRouter() {
  sl.registerLazySingleton<GoRouter>(() => appRouter(appUserBloc: sl()));
}

void _registerPost() {
  sl
    ..registerLazySingleton<PostManagementRemoteDataSource>(
      () => PostManagementRemoteDataSourceImpl(sl()),
    )
    ..registerLazySingleton<PostManagementRepository>(
      () => PostManagementRepositoryImpl(sl()),
    )
    ..registerLazySingleton<PostLikeRemoteDataSource>(
      () => PostLikeRemoteDataSourceImpl(sl()),
    )
    ..registerLazySingleton<PostLikeRepository>(
      () => PostLikeRepositoryImpl(sl()),
    )
    ..registerFactory<PostManagementBloc>(
      () => PostManagementBloc(sl(), sl(), sl()),
    )
    ..registerFactory<PostFormBloc>(() => PostFormBloc())
    ..registerFactory(() => PostLikeCubit(likeRepository: sl()))
    ..registerFactory(() => PostLikersBloc(sl()))
    ..registerFactory(() => HashtagFeedBloc(sl(), sl()));
}

void _registerFollow() {
  sl
    ..registerLazySingleton<FollowRemoteDataSource>(
      () => FollowRemoteDataSourceImpl(sl()),
    )
    ..registerLazySingleton<FollowRepository>(() => FollowRepositoryImpl(sl()))
    ..registerFactory(
      () => FollowActionCubit(followRepository: sl(), followEventBus: sl()),
    )
    ..registerFactory(() => ProfileConnectionsBloc(sl()));
}

void _registerSearch() {
  sl
    ..registerLazySingleton<SearchRemoteDataSource>(
      () => SearchRemoteDataSourceImpl(sl()),
    )
    ..registerFactory<SearchRepository>(() => SearchRepositoryImpl(sl(), sl()))
    ..registerFactory<SearchBloc>(() => SearchBloc(sl()));
}

void registerUserScopedDependencies(String userId) {
  if (sl.isRegistered<SearchLocalDataSource>()) {
    sl.unregister<SearchLocalDataSource>();
  }

  sl.registerLazySingleton<SearchLocalDataSource>(
    () => SearchLocalDataSourceImpl(currentUserId: userId),
  );
}

void _registerComments() {
  sl
    ..registerLazySingleton(() => CommentEventBus())
    ..registerLazySingleton<CommentRemoteDataSource>(
      () => CommentRemoteDataSourceImpl(sl()),
    )
    ..registerLazySingleton<CommentRepository>(
      () => CommentRepositoryImpl(sl()),
    )
    ..registerFactory(() => CommentsBloc(sl(), sl()))
    ..registerFactory(() => CommentRepliesBloc(sl(), sl()))
    ..registerFactory(() => CommentActionsBloc(sl(), sl()))
    ..registerFactory(() => CommentInputCubit(sl()));
}
