import 'package:equatable/equatable.dart';

class Review extends Equatable {
  final String id;
  final String author;
  final String content;
  final double rating;
  final DateTime createdAt;
  final String? authorDetails;

  const Review({
    required this.id,
    required this.author,
    required this.content,
    this.rating = 0.0,
    required this.createdAt,
    this.authorDetails,
  });

  @override
  List<Object?> get props => [
    id,
    author,
    content,
    rating,
    createdAt,
    authorDetails,
  ];
}
