import 'package:flutter/material.dart';
import '../nav.dart';

//flutter run -d web-server --web-hostname 0.0.0.0 --web-port 80 --no-sound-null-safety
//flutter build web --no-sound-null-safety
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: Homepage(),
    );
  }
}
