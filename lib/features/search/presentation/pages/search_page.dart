import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/core/router/route_names.dart';
import 'package:pulse/core/theme/app_colors.dart';
import 'package:pulse/core/utils/debouncer.dart';
import 'package:pulse/core/widgets/app_text_field.dart';
import 'package:pulse/features/search/presentation/bloc/search_bloc.dart';
import 'package:pulse/features/search/presentation/widgets/search_accounts_tab.dart';
import 'package:pulse/features/search/presentation/widgets/search_hashtags_tab.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  final _searchController = TextEditingController();
  final _debouncer = Debouncer(duration: const Duration(milliseconds: 300));
  final _focusNode = FocusNode();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    context.read<SearchBloc>().add(const SearchEvent.loadHistoricalData());

    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        final tab = _tabController.index == 0
            ? SearchTab.people
            : SearchTab.hashtags;
        context.read<SearchBloc>().add(SearchEvent.tabChanged(tab));
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    _debouncer.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onQueryChanged(String query) {
    _debouncer.run(() {
      if (!mounted) return;
      context.read<SearchBloc>().add(SearchEvent.queryChanged(query));
    });
  }

  void _onProfileTapped(ProfileEntity profile) {
    context.read<SearchBloc>().add(SearchEvent.addPeopleHistory(profile));
    context.pushNamed(
      RouteNames.userProfile,
      pathParameters: {'userId': profile.id},
    );
  }

  void _onRemoveAccountFromHistory(String userId) {
    context.read<SearchBloc>().add(SearchEvent.removePeopleHistory(userId));
  }

  void _onClearAllAccountsFromHistory() {
    context.read<SearchBloc>().add(SearchEvent.clearPeopleHistory());
  }

  void _onHashtagTapped(String hashtag) {
    context.read<SearchBloc>().add(SearchEvent.addHashtagHistory(hashtag));
    context.pushNamed(
      RouteNames.hashtagFeed,
      pathParameters: {'hashtag': hashtag},
    );
  }

  void _onRemoveHashtagFromHistory(String hashtag) {
    context.read<SearchBloc>().add(SearchEvent.removeHashtagHistory(hashtag));
  }

  void _onClearAllHashtagsFromHistory() {
    context.read<SearchBloc>().add(SearchEvent.clearHashtagHistory());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const .only(top: 8),
            child: AppTextField(
              controller: _searchController,
              focusNode: _focusNode,
              hint: 'Search...',
              prefixIcon: const Icon(
                Icons.search,
                color: AppColors.textSecondary,
              ),
              suffixIcon: _searchController.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear, size: 20),
                      onPressed: () {
                        setState(() {
                          _searchController.clear();
                        });
                        _onQueryChanged('');
                        _focusNode.unfocus();
                      },
                    )
                  : null,
              onChanged: (val) {
                setState(() {});
                _onQueryChanged(val);
              },
              textInputAction: .search,
            ),
          ),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Accounts'),
              Tab(text: 'Tags'),
            ],
          ),
        ),
        body: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return TabBarView(
              controller: _tabController,
              children: [
                SearchAccountsTab(
                  state: state,
                  onProfileTapped: _onProfileTapped,
                  onRemoveAccountFromHistory: _onRemoveAccountFromHistory,
                  onClearAllAccountsFromHistory: _onClearAllAccountsFromHistory,
                  onRetry: () => _onQueryChanged(_searchController.text),
                ),
                SearchHashtagsTab(
                  state: state,
                  onHashtagTapped: _onHashtagTapped,
                  onRemoveHashtagFromHistory: _onRemoveHashtagFromHistory,
                  onClearAllHashtagsFromHistory: _onClearAllHashtagsFromHistory,
                  onRetry: () => _onQueryChanged(_searchController.text),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
