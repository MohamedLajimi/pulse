import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/widgets/app_error_widget.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';
import 'package:pulse/features/profile/bloc/profile_detail/profile_detail_bloc.dart';
import 'package:pulse/features/profile/bloc/profile_media/profile_media_bloc.dart';
import 'package:pulse/features/profile/bloc/profile_posts/profile_posts_bloc.dart';
import 'package:pulse/features/profile/widgets/profile_detail_header.dart';
import 'package:pulse/features/profile/widgets/profile_media_tab.dart';
import 'package:pulse/features/profile/widgets/profile_posts_tab.dart';

class ProfileDetailPage extends StatefulWidget {
  final String userId;

  const ProfileDetailPage({super.key, required this.userId});

  @override
  State<ProfileDetailPage> createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_onTabChanged);
  }

  void _onTabChanged() {
    if (!_tabController.indexIsChanging && _tabController.index == 1) {
      final mediaState = context.read<ProfileMediaBloc>().state;
      if (mediaState.status == ProfileMediaStatus.initial) {
        context.read<ProfileMediaBloc>().add(
          ProfileMediaEvent.fetchInitial(widget.userId),
        );
      }
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ProfileDetailBloc, ProfileDetailState>(
        listener: (context, state) {
          state.whenOrNull(
            profileLoaded: (_, shouldTriggerPostFeching) {
              if (shouldTriggerPostFeching) {
                context.read<ProfilePostsBloc>().add(
                  ProfilePostsEvent.fetchInitial(widget.userId),
                );
              }
            },
          );
        },

        builder: (context, state) {
          return state.when(
            initial: () => const AppLoadingIndicator(),
            loading: () => const AppLoadingIndicator(),
            error: (message) => AppErrorWidget(
              message: message,
              onRetry: () => context.read<ProfileDetailBloc>().add(
                ProfileDetailEvent.fetchProfile(widget.userId),
              ),
            ),
            profileLoaded: (profile, _) => NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    title: Text(profile.username),
                    pinned: true,
                    forceElevated: innerBoxIsScrolled,
                  ),
                  SliverToBoxAdapter(
                    child: ProfileDetailHeader(profile: profile),
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _StickyTabBarDelegate(
                      tabBar: TabBar(
                        controller: _tabController,
                        tabs: const [
                          Tab(icon: Icon(CupertinoIcons.square_grid_2x2)),
                          Tab(icon: Icon(CupertinoIcons.play_rectangle)),
                        ],
                      ),
                    ),
                  ),
                ];
              },
              body: TabBarView(
                controller: _tabController,
                children: [
                  ProfilePostsTab(userId: widget.userId),
                  ProfileMediaTab(userId: widget.userId),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  const _StickyTabBarDelegate({required this.tabBar});

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return ColoredBox(
      color: context.theme.scaffoldBackgroundColor,
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(_StickyTabBarDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar;
  }
}
