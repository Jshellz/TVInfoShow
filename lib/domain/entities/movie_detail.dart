import 'package:equatable/equatable.dart';
import 'cast.dart';
import 'genre.dart';
import 'movie.dart';

class MovieDetail extends Equatable {
  final Movie movie;
  final List<Genre> genres;
  final List<Cast> cast;
  final String? homepage;
  final String? imdbId;
  final String status;
  final String? tagline;
  final int? budget;
  final int? revenue;
  final int runtime;
  final List<String> productionCountries;
  final List<String> spokenLanguages;

  // Constructor with named parameters and default values
  const MovieDetail({
    required this.movie,
    this.genres = const [],
    this.cast = const [],
    this.homepage,
    this.imdbId,
    this.status = '',
    this.tagline,
    this.budget,
    this.revenue,
    this.runtime = 0,
    this.productionCountries = const [],
    this.spokenLanguages = const [],
  });

  // Override props for Equatable
  @override
  List<Object?> get props => [
    movie,
    genres,
    cast,
    homepage,
    imdbId,
    status,
    tagline,
    budget,
    revenue,
    runtime,
    productionCountries,
    spokenLanguages,
  ];

  // Helper getter for runtime display (e.g., "2h 30m")
  String get runtimeDisplay {
    if (runtime == 0) return '';
    final hours = runtime ~/ 60;
    final minutes = runtime % 60;
    if (hours == 0) return '${minutes}m';
    if (minutes == 0) return '${hours}h';
    return '${hours}h ${minutes}m';
  }

  // Helper getter for budget display
  String get budgetDisplay {
    if (budget == null || budget == 0) return 'N/A';
    return '\$${(budget! / 1000000).toStringAsFixed(1)}M';
  }

  // Helper getter for revenue display
  String get revenueDisplay {
    if (revenue == null || revenue == 0) return 'N/A';
    return '\$${(revenue! / 1000000).toStringAsFixed(1)}M';
  }

  // Get top cast members (limit to 5 by default)
  List<Cast> getTopCast({int limit = 5}) {
    return cast.take(limit).toList();
  }
}
