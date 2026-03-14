// lib/providers/movies_provider.dart

import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/movies.dart';
import '../services/movie_services.dart';
part 'movie_providers.g.dart';

// ── Provider de búsqueda (texto que escribe el usuario) ──────
@riverpod
class SearchQuery extends _$SearchQuery {
  @override
  String build() => '';

  void update(String query) => state = query;
}

// ── Provider principal: lista filtrada de películas ──────────
@riverpod
class MovieList extends _$MovieList {
  @override
  Future<List<Movie>> build() async {
    // Obtiene el texto de búsqueda y filtra
    final query = ref.read(searchQueryProvider);
    final all   = await MovieService().fetchMovies();
    if (query.isEmpty) return all;
    return all
        .where((m) => m.title.toLowerCase()
            .contains(query.toLowerCase()))
        .toList();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
        () => MovieService().fetchMovies());
  }
}
