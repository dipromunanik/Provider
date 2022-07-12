import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/data_class.dart';

import 'home_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_)=>Data(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
