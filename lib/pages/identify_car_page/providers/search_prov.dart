import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchQueryNotifier extends StateNotifier<String?> {
  SearchQueryNotifier() : super(null);

  void updateQuery(String? query) {
    state = query;
  }
}

final searchQueryProvider = StateNotifierProvider<SearchQueryNotifier, String?>(
  (ref) => SearchQueryNotifier(),
);
