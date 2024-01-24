import 'package:flutter/material.dart';
import 'package:inherited_widget/api.dart';
import 'package:inherited_widget/api_provider.dart';
import 'package:inherited_widget/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: APIProvider(
        api: API(),
        child: const HomePage(),
      ),
    );
  }
}
