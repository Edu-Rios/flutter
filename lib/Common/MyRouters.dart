import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:trabflutter/Pages/PlayListPage.dart';
import 'package:trabflutter/Pages/homeEdu.dart';
import 'package:trabflutter/Pages/loginPage.dart';

const String ROUTE_HOME = '/home';
const String ROUTE_LOGIN = '/login';
const String ROUTE_PLAY_LIST = '/play_list';
const String ROUTE_NOW_PLAYING = '/now_playing';

class MyRouters {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeEdu(title: ""));
      case '/login':
        return MaterialPageRoute(builder: (_) => Loginpage());

      case '/play_list':
        return MaterialPageRoute(builder: (_) => PlaylistPage());

      case '/now_playing':
      // return MaterialPageRoute(builder: (_) => NowPlayingPage());
      default:
        return MaterialPageRoute(builder: (_) => Loginpage());
    }
  }
}
