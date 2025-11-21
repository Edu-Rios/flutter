import 'package:flutter/material.dart';
import 'package:trabflutter/Common/MyRouters.dart';
import 'package:trabflutter/Pages/MyListView.dart';
import 'package:trabflutter/Pages/NowPlayPage.dart';
import 'package:trabflutter/Pages/PlayListPage.dart';
import 'package:trabflutter/Pages/homeEdu.dart';
import 'package:trabflutter/Pages/loginPage.dart';
import 'Pages/MyHomePage.dart';
import 'Widgets/MultiChild/MyStack.dart';
import 'Widgets/ListViewAndGridView/MyContainer.dart';
import 'Widgets/MultiChild/MyCard.dart';
import 'Pages/spotify_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //onGenerateRoute: MyRouters.generateRoute,
      //initialRoute: ROUTE_NOW_PLAYING,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeEdu(title: "title"),
    );
  }
}
