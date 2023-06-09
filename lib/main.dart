import 'package:flexflix_flutter/pages/inicio/inicio.dart';
import 'package:flexflix_flutter/themes/netflix_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: netflixTheme(),
      home: const Inicio(),
    );
  }
}
