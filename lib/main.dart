import 'package:flutter/material.dart';
import 'package:ourfamy/common/styles.dart';
import 'package:ourfamy/model/event_baru.dart';
import 'package:ourfamy/ui/event/event_detail_page.dart';
import 'package:ourfamy/ui/event/event_list_page.dart';
import 'package:ourfamy/ui/article/article_page.dart';
import 'package:ourfamy/ui/home/home_page.dart';
import 'package:provider/provider.dart';
import 'package:ourfamy/provider/register_provider.dart';
import 'package:ourfamy/ui/login/login_page.dart';
import 'package:ourfamy/ui/register/register_page.dart';

void main() {
   runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=> RegisterProvider()),
    

  ],
    child:  MaterialApp(
      
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
            foregroundColor: Colors.white, backgroundColor: secondaryColor,
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
        '/eventListPage': (context) => const EventListPage(),
        '/loginPage': (context) => const LoginPage(),
        '/articleListPage': (context) => const ArticleListPage(),
        // EventDetailPage.routeName: (context) => EventDetailPage(
        //       event: ModalRoute.of(context)?.settings.arguments as EventResult(),
        //     ),
        '/registerPage': (context) => const RegisterPage(),
        '/home-page':(context) => HomePage(),
      },
    )
    );
    
  }
}
