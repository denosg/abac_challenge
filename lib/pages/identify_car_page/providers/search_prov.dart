import 'package:abac_challenge/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchQueryNotifier extends StateNotifier<String?> {
  SearchQueryNotifier() : super(null);

  void updateQuery(String? query) {
    if (query == '') {
      state = null;
    } else {
      state = query;
    }
    logger.i('query: $state');
  }
}

final searchQueryProvider = StateNotifierProvider<SearchQueryNotifier, String?>(
  (ref) => SearchQueryNotifier(),
);
