class PaginationParams {
  final int page;
  final int limit;

  const PaginationParams({this.page = 0, this.limit = 15});

  int get from => page * limit;
  int get to => from + limit - 1;
}

class PaginatedData<T> {
  final List<T> items;
  final bool hasMore;
  final int? totalCount;

  const PaginatedData({
    required this.items,
    required this.hasMore,
    this.totalCount,
  });

  PaginatedData<T> copyWith({List<T>? items, bool? hasMore, int? totalCount}) {
    return PaginatedData<T>(
      items: items ?? this.items,
      hasMore: hasMore ?? this.hasMore,
      totalCount: totalCount ?? this.totalCount,
    );
  }
}
