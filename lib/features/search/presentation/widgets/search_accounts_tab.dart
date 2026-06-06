import 'package:flutter/material.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/widgets/app_avatar.dart';
import 'package:pulse/core/widgets/app_error_widget.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';
import 'package:pulse/features/search/presentation/bloc/search_bloc.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';

class SearchAccountsTab extends StatelessWidget {
  final SearchState state;
  final Function(ProfileEntity) onProfileTapped;
  final Function(String) onRemoveAccountFromHistory;
  final VoidCallback onClearAllAccountsFromHistory;
  final VoidCallback onRetry;
  const SearchAccountsTab({
    super.key,
    required this.state,
    required this.onProfileTapped,
    required this.onRemoveAccountFromHistory,
    required this.onClearAllAccountsFromHistory,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    if (state.errorMessage != null && state.activeTab == SearchTab.people) {
      return AppErrorWidget(message: state.errorMessage!, onRetry: onRetry);
    }

    if (state.isPeopleLoading) {
      return const Center(child: AppLoadingIndicator());
    }

    if (state.peopleResults != null) {
      if (state.peopleResults!.isEmpty) {
        return const Center(child: Text('No accounts found.'));
      }
      return ListView.builder(
        itemCount: state.peopleResults!.length,
        itemBuilder: (context, index) {
          final profile = state.peopleResults![index];
          return ListTile(
            leading: AppAvatar(url: profile.avatarUrl, radius: 24),
            title: Text(
              profile.displayName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('@${profile.username}'),
            onTap: () => onProfileTapped(profile),
          );
        },
      );
    }

    if (state.peopleHistory.isEmpty) {
      return const Center(child: Text('Search for friends'));
    }

    return Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: const .fromLTRB(16, 16, 16, 8),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              const Text(
                'Recent Accounts',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: onClearAllAccountsFromHistory,
                child: Text(
                  'Clear all',
                  style: TextStyle(color: context.colorScheme.primary),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: state.peopleHistory.length,
            itemBuilder: (context, index) {
              final profile = state.peopleHistory[index];
              return ListTile(
                leading: AppAvatar(url: profile.avatarUrl, radius: 24),
                title: Text(
                  profile.displayName,
                  style: const TextStyle(fontWeight: .bold),
                ),
                subtitle: Text(
                  '@${profile.username}',
                  style: context.textTheme.bodySmall,
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.close, size: 20),
                  onPressed: () => onRemoveAccountFromHistory(profile.id),
                ),
                onTap: () => onProfileTapped(profile),
              );
            },
          ),
        ),
      ],
    );
  }
}
