import 'package:dcotortask/Splash_Screen.dart';
import 'package:dcotortask/account_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Providers/Accounts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider.value(
        value: Accounts(),
    ),],

      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,

          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen (),
        routes: {
      Account_Screen.routeName : (ctx) => Account_Screen()
      } ),
    );

}}



