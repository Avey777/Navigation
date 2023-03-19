import 'package:flutter/material.dart';
import '../nav/nav2.dart';
import '../constants.dart';

// flutter run -d web-server --web-hostname 0.0.0.0 --web-port 80
// flutter build web
// flutter build web --web-renderer html
// flutter build web --web-renderer canvaskit
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
      debugShowCheckedModeBanner: false, //调试显示检查模式横幅
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: Homepage(),
    );
  }
}


// flutter run -d web-server --web-hostname 0.0.0.0 --web-port 80 --no-sound-null-safety
// flutter build web --no-sound-null-safety
// flutter build web --web-renderer html --no-sound-null-safety
// flutter build web --web-renderer canvaskit --no-sound-null-safety