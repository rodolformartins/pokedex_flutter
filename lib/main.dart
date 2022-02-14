import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:view/view.dart';
import 'package:controller/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ApiMethods()),
      ],
      child: MaterialApp(
        title: 'PokeDex',
        debugShowCheckedModeBanner: false,
        home: PokeDexHomePage(),
      ),
    );
  }
}
