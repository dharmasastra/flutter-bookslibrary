import 'package:books_library/src/App/models/book_model.dart';

final List<Book> books = [
  Book(
    id: 1,
    title: 'CorelDraw untuk Tingkat Pemula Sampai Mahir',
    author: 'Jubilee Enterprise',
    imageUrl: 'assets/corel.jpg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra, luctus nisi ac, semper enim. Vestibulum in mi feugiat, mattis erat suscipit, fermentum quam. Mauris non urna sed odio congue rhoncus. \nAliquam a dignissim ex. Suspendisse et sem porta, consequat dui et, placerat tortor. Sed elementum nunc a blandit euismod. Cras condimentum faucibus dolor. Etiam interdum egestas sagittis. Aliquam vitae molestie eros. Cras porta felis ac eros pellentesque, sed lobortis mi eleifend. Praesent ut.',
    publisher: 'Lorem Ipsum',
    pages: 123,
    rating: 3.5,
    categories: ['Teknologi', 'Tutorial', 'Design', 'Programming', 'History'],
  ),

  Book(
    id: 2,
    title: 'Buku Pintar Drafter Untuk Pemula Hingga Mahir',
    author: 'Widada',
    imageUrl: 'assets/drafter.jpg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra, luctus nisi ac, semper enim. Vestibulum in mi feugiat, mattis erat suscipit, fermentum quam. Mauris non urna sed odio congue rhoncus. \nAliquam a dignissim ex. Suspendisse et sem porta, consequat dui et, placerat tortor. Sed elementum nunc a blandit euismod. Cras condimentum faucibus dolor. Etiam interdum egestas sagittis. Aliquam vitae molestie eros. Cras porta felis ac eros pellentesque, sed lobortis mi eleifend. Praesent ut.',
    publisher: 'Lorem Ipsum',
    pages: 200,
    rating: 4.5,
    categories: ['Teknologi', 'Tutorial'],
  ),

  Book(
    id: 3,
    title: 'Adobe InDesign: Seri Panduan Terlengkap',
    author: 'Jubilee Enterprise',
    imageUrl: 'assets/indesign.jpg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra, luctus nisi ac, semper enim. Vestibulum in mi feugiat, mattis erat suscipit, fermentum quam. Mauris non urna sed odio congue rhoncus. \nAliquam a dignissim ex. Suspendisse et sem porta, consequat dui et, placerat tortor. Sed elementum nunc a blandit euismod. Cras condimentum faucibus dolor. Etiam interdum egestas sagittis. Aliquam vitae molestie eros. Cras porta felis ac eros pellentesque, sed lobortis mi eleifend. Praesent ut.',
    publisher: 'Lorem Ipsum',
    pages: 324,
    rating: 5.0,
    categories: ['Teknologi', 'Tutorial', 'Design'],
  ),

  Book(
    id: 4,
    title: 'Pemodelan Objek Dengan 3Ds Max 2014',
    author: 'Wahana Komputer',
    imageUrl: 'assets/max_3d.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra, luctus nisi ac, semper enim. Vestibulum in mi feugiat, mattis erat suscipit, fermentum quam. Mauris non urna sed odio congue rhoncus. \nAliquam a dignissim ex. Suspendisse et sem porta, consequat dui et, placerat tortor. Sed elementum nunc a blandit euismod. Cras condimentum faucibus dolor. Etiam interdum egestas sagittis. Aliquam vitae molestie eros. Cras porta felis ac eros pellentesque, sed lobortis mi eleifend. Praesent ut.',
    publisher: 'Lorem Ipsum',
    pages: 200,
    rating: 3.0,
    categories: ['Teknologi', 'Tutorial', 'Design', ],
  ),

  Book(
    id: 5,
    title: 'Penerapan Visualisasi 3D Dengan Autodesk Maya',
    author: 'Dhani Ariatmanto',
    imageUrl: 'assets/maya.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra, luctus nisi ac, semper enim. Vestibulum in mi feugiat, mattis erat suscipit, fermentum quam. Mauris non urna sed odio congue rhoncus. \nAliquam a dignissim ex. Suspendisse et sem porta, consequat dui et, placerat tortor. Sed elementum nunc a blandit euismod. Cras condimentum faucibus dolor. Etiam interdum egestas sagittis. Aliquam vitae molestie eros. Cras porta felis ac eros pellentesque, sed lobortis mi eleifend. Praesent ut.',
    publisher: 'Lorem Ipsum',
    pages: 234,
    rating: 4.8,
    categories: ['Teknologi', 'Tutorial'],
  ),

  Book(
    id: 6,
    title: 'Teknik Lancar Menggunakan Adobe Photoshop',
    author: 'Jubilee Enterprise',
    imageUrl: 'assets/photoshop.jpg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra, luctus nisi ac, semper enim. Vestibulum in mi feugiat, mattis erat suscipit, fermentum quam. Mauris non urna sed odio congue rhoncus. \nAliquam a dignissim ex. Suspendisse et sem porta, consequat dui et, placerat tortor. Sed elementum nunc a blandit euismod. Cras condimentum faucibus dolor. Etiam interdum egestas sagittis. Aliquam vitae molestie eros. Cras porta felis ac eros pellentesque, sed lobortis mi eleifend. Praesent ut.',
    publisher: 'Lorem Ipsum',
    pages: 240,
    rating: 4.5,
    categories: ['Teknologi', 'Tutorial'],
  ),

  Book(
    id: 7,
    title: 'Adobe Premiere Terlengkap dan Termudah',
    author: 'Jubilee Enterprise',
    imageUrl: 'assets/premier.jpg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra, luctus nisi ac, semper enim. Vestibulum in mi feugiat, mattis erat suscipit, fermentum quam. Mauris non urna sed odio congue rhoncus. \nAliquam a dignissim ex. Suspendisse et sem porta, consequat dui et, placerat tortor. Sed elementum nunc a blandit euismod. Cras condimentum faucibus dolor. Etiam interdum egestas sagittis. Aliquam vitae molestie eros. Cras porta felis ac eros pellentesque, sed lobortis mi eleifend. Praesent ut.',
    publisher: 'Lorem Ipsum',
    pages: 432,
    rating: 4.8,
    categories: ['Teknologi', 'Tutorial'],
  ),

  Book(
    id: 8,
    title: 'Cad Series : Google Sketchup Untuk Desain 3D',
    author: 'Wahana Komputer',
    imageUrl: 'assets/sketchup.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra, luctus nisi ac, semper enim. Vestibulum in mi feugiat, mattis erat suscipit, fermentum quam. Mauris non urna sed odio congue rhoncus. \nAliquam a dignissim ex. Suspendisse et sem porta, consequat dui et, placerat tortor. Sed elementum nunc a blandit euismod. Cras condimentum faucibus dolor. Etiam interdum egestas sagittis. Aliquam vitae molestie eros. Cras porta felis ac eros pellentesque, sed lobortis mi eleifend. Praesent ut.',
    publisher: 'Lorem Ipsum',
    pages: 321,
    rating: 4.5,
    categories: ['Teknologi', 'Tutorial'],
  ),

  Book(
    id: 9,
    title: 'Webmaster Series : Trik Cepat Menguasai CSS',
    author: 'Wahana Komputer',
    imageUrl: 'assets/webmaster.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra, luctus nisi ac, semper enim. Vestibulum in mi feugiat, mattis erat suscipit, fermentum quam. Mauris non urna sed odio congue rhoncus. \nAliquam a dignissim ex. Suspendisse et sem porta, consequat dui et, placerat tortor. Sed elementum nunc a blandit euismod. Cras condimentum faucibus dolor. Etiam interdum egestas sagittis. Aliquam vitae molestie eros. Cras porta felis ac eros pellentesque, sed lobortis mi eleifend. Praesent ut.',
    publisher: 'Lorem Ipsum',
    pages: 431,
    rating: 3.5,
    categories: ['Teknologi', 'Tutorial'],
  ),

  // Book(
  //   id: 10,
  //   title: 'CorelDraw untuk Tingkat Pemula Sampai Mahir',
  //   author: 'Jubilee Enterprise',
  //   imageUrl: 'assets/corel.jpg',
  //   description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra, luctus nisi ac, semper enim. Vestibulum in mi feugiat, mattis erat suscipit, fermentum quam. Mauris non urna sed odio congue rhoncus. \nAliquam a dignissim ex. Suspendisse et sem porta, consequat dui et, placerat tortor. Sed elementum nunc a blandit euismod. Cras condimentum faucibus dolor. Etiam interdum egestas sagittis. Aliquam vitae molestie eros. Cras porta felis ac eros pellentesque, sed lobortis mi eleifend. Praesent ut.',
  //   publisher: 'Lorem Ipsum',
  //   pages: 123,
  //   rating: 3.5,
  //   categories: ['Teknologi', 'Tutorial', 'Design', 'Programming', 'History'],
  // ),

  // Book(
  //   id: 11,
  //   title: 'Buku Pintar Drafter Untuk Pemula Hingga Mahir',
  //   author: 'Widada',
  //   imageUrl: 'assets/drafter.jpg',
  //   description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra, luctus nisi ac, semper enim. Vestibulum in mi feugiat, mattis erat suscipit, fermentum quam. Mauris non urna sed odio congue rhoncus. \nAliquam a dignissim ex. Suspendisse et sem porta, consequat dui et, placerat tortor. Sed elementum nunc a blandit euismod. Cras condimentum faucibus dolor. Etiam interdum egestas sagittis. Aliquam vitae molestie eros. Cras porta felis ac eros pellentesque, sed lobortis mi eleifend. Praesent ut.',
  //   publisher: 'Lorem Ipsum',
  //   pages: 200,
  //   rating: 4.5,
  //   categories: ['Teknologi', 'Tutorial'],
  // ),

  // Book(
  //   id: 12,
  //   title: 'Adobe InDesign: Seri Panduan Terlengkap',
  //   author: 'Jubilee Enterprise',
  //   imageUrl: 'assets/indesign.jpg',
  //   description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra, luctus nisi ac, semper enim. Vestibulum in mi feugiat, mattis erat suscipit, fermentum quam. Mauris non urna sed odio congue rhoncus. \nAliquam a dignissim ex. Suspendisse et sem porta, consequat dui et, placerat tortor. Sed elementum nunc a blandit euismod. Cras condimentum faucibus dolor. Etiam interdum egestas sagittis. Aliquam vitae molestie eros. Cras porta felis ac eros pellentesque, sed lobortis mi eleifend. Praesent ut.',
  //   publisher: 'Lorem Ipsum',
  //   pages: 324,
  //   rating: 5.0,
  //   categories: ['Teknologi', 'Tutorial'],
  // ),
];