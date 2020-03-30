class Book {

  Book({
    this.id,
    this.imageUrl,
    this.title,
    this.rating,
    this.categories,
    this.description,
    this.publisher,
    this.author,
    this.pages,
  });

  final int id;
  final String imageUrl;
  final String title;
  final double rating;
  final List<String> categories;
  final String description;
  final String publisher;
  final String author;
  final int pages;
}