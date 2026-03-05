import 'package:equatable/equatable.dart';

class Cast extends Equatable {
  final int id;
  final String name;
  final String? profilePath;
  final String character;
  final int order;

  const Cast({
    required this.id,
    required this.name,
    this.profilePath,
    required this.character,
    required this.order,
  });

  // Override props for Equatable
  @override
  List<Object?> get props => [id, name, profilePath, character, order];

  // Helper getter for profile image URL
  String? get fullProfilePath {
    if (profilePath == null || profilePath!.isEmpty) return null;
    return 'https://image.tmdb.org/t/p/w200$profilePath';
  }
}
