import 'package:app_mft/pages/cliente/complete_goalnutri_page.dart';
import 'package:app_mft/pages/cliente/complete_goalphysic_page.dart';
import 'package:app_mft/pages/cliente/goals_page.dart';
import 'package:app_mft/pages/cliente/home_page.dart';
import 'package:app_mft/pages/cliente/profile_page.dart';
import 'package:app_mft/pages/cliente/programs_page.dart';
import 'package:app_mft/pages/cliente/show_evaluations_page.dart';
import 'package:app_mft/pages/login_page.dart';
import 'package:app_mft/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String status;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context) => LoginPage(),
          'register' :(BuildContext context)=> RegisterUserPage(),

          'showEvas' :(BuildContext context) => ShowEvaluationsPage(),

          'completeGoalN' :(BuildContext context) =>CompleteGoalNutriPage(),
          'completeGoalF' :(BuildContext context) =>CompleteGoalPhysPage(),


        
          'home' :(BuildContext context) =>HomePage(),
          'profClie' :(BuildContext context) =>ProfilePage(),
          'programs' :(BuildContext context) =>ProgramsPage(),
           'goalsClie' :(BuildContext context) =>GoalsPage(),
        },

        );
  }
}
