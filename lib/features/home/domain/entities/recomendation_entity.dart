class RecomendationEntity {
  final int id;
  final String imageUrl;
  final String authorName;
  final int price;
  final double stars;
  final int studentsCount;
  final String title;

  RecomendationEntity({
    required this.id,
    required this.imageUrl,
    required this.authorName,
    required this.price,
    required this.stars,
    required this.studentsCount,
    required this.title,
  });
}
