import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/provider/recomend_api_json_provider.dart';
import 'package:mini_project_resepkita/screen/FirstScreen_bottom.dart';
import 'package:mini_project_resepkita/provider/createresep_provider.dart';
import 'package:mini_project_resepkita/screen/categoriscreen.dart';
import 'package:mini_project_resepkita/screen/homepagescreen.dart';


import 'package:provider/provider.dart';



void main() {
  runApp(MultiProvider(providers: [
    //Provider minggu11
    // ChangeNotifierProvider(create: (_) => ResepKita()),
    ChangeNotifierProvider(create: (context) => ResepListProvider()),
        ChangeNotifierProvider(create: (context) => ResepKamu()),

    // ChangeNotifierProvider(create: (_)=> ResepListProvider())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: FirstScreenWithBottomNav());
  }
}
