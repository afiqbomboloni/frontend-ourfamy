import 'package:flutter/material.dart';
import 'package:ourfamy/common/styles.dart';
import 'package:ourfamy/model/event.dart';
import 'package:ourfamy/ui/event/event_detail_page.dart';
import 'package:ourfamy/ui/event/event_list_page.dart';
import 'package:ourfamy/ui/article/article_list_page.dart';
import 'package:ourfamy/ui/home/home_page.dart';
import 'package:ourfamy/ui/login/login_page.dart';
import 'package:ourfamy/ui/register/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: primaryColor,
              onPrimary: Colors.black,
              secondary: secondaryColor,
            ),
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: myTextTheme,
        appBarTheme: const AppBarTheme(elevation: 0),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: secondaryColor,
            onPrimary: Colors.white,
            textStyle: const TextStyle(),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(0),
              ),
            ),
          ),
        ),
      ),
      initialRoute: '/loginPage',
      routes: {
        '/eventListPage': (context) => EventListPage(),
        '/loginPage': (context) => LoginPage(),
        '/articleListPage': (context) => ArticleListPage(),
        EventDetailPage.routeName: (context) => EventDetailPage(
              event: ModalRoute.of(context)?.settings.arguments as Event,
            ),
        '/registerPage': (context) => RegisterPage(),
        '/homePage': (context) => HomePage(),
      },
    );
  }
}
