import 'package:flutter/material.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/widgets/app_error_widget.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';
import 'package:pulse/features/search/presentation/bloc/search_bloc.dart';

class SearchHashtagsTab extends StatelessWidget {
  final SearchState state;
  final Function(String) onHashtagTapped;
  final Function(String) onRemoveHashtagFromHistory;
  final VoidCallback onClearAllHashtagsFromHistory;
  final VoidCallback onRetry;
  const SearchHashtagsTab({
    super.key,
    required this.state,
    required this.onHashtagTapped,
    required this.onRemoveHashtagFromHistory,
    required this.onClearAllHashtagsFromHistory,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    if (state.errorMessage != null && state.activeTab == SearchTab.hashtags) {
      return AppErrorWidget(message: state.errorMessage!, onRetry: onRetry);
    }

    if (state.isHashtagLoading) {
      return const Center(child: AppLoadingIndicator());
    }

    if (state.hashtagResults != null) {
      if (state.hashtagResults!.isEmpty) {
        return const Center(child: Text('No tags found.'));
      }
      return ListView.builder(
        itemCount: state.hashtagResults!.length,
        itemBuilder: (context, index) {
          final tag = state.hashtagResults![index];
          return ListTile(
            leading: const CircleAvatar(child: Icon(Icons.tag)),
            title: Text(
              '#$tag',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () => onHashtagTapped(tag),
          );
        },
      );
    }

    if (state.hashtagHistory.isEmpty) {
      return const Center(child: Text('Search for topics'));
    }

    return Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: const .fromLTRB(16, 16, 16, 8),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              const Text('Recent Tags', style: TextStyle(fontWeight: .bold)),
              GestureDetector(
                onTap: onClearAllHashtagsFromHistory,
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
            itemCount: state.hashtagHistory.length,
            itemBuilder: (context, index) {
              final tag = state.hashtagHistory[index];
              return ListTile(
                leading: const CircleAvatar(child: Icon(Icons.tag)),
                title: Text(
                  '#$tag',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.close, size: 20),
                  onPressed: () => onRemoveHashtagFromHistory(tag),
                ),
                onTap: () => onHashtagTapped(tag),
              );
            },
          ),
        ),
      ],
    );
  }
}
