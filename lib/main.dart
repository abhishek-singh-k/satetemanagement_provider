import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satetemanagement_provider/Provider/ExampleOneProvider.dart';
import 'package:satetemanagement_provider/Provider/favourite_one_provider.dart';
import 'Provider/count_Provider.dart';
import 'Screen/Countexample.dart';
import 'Screen/example_one.dart';
import 'Screen/favourite_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:[
          ChangeNotifierProvider(create: (_)=>ExampleOneProvider(),),
          ChangeNotifierProvider(create: (_)=>CountProvider(),),
          ChangeNotifierProvider(create: (_)=>FavouriteProvider(),),
        ],
      child: MaterialApp(
        home: FavouriteScreen()
    ),
    );
  }
}



