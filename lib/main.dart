import 'package:flutter/material.dart';
import 'package:books_library/src/view.dart';
import 'package:books_library/src/model.dart';


void main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  final bool isInitialized = await MyDbModel().initializeDB();

  if (isInitialized == true) {
    runApp(MyApp());
  } else {
    print('error initialized database');
  }
}


// void main() {
//   runApp(MyApp());
// }


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        platform: TargetPlatform.iOS,
      ),
      home: BookHomePage(),
    );
  }
}