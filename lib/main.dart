import 'package:app_mft/pages/cliente/evaFis/complete_controlphysic_page.dart';
import 'package:app_mft/pages/cliente/evaFis/complete_operationphysic_page.dart';
import 'package:app_mft/pages/cliente/evaNutri/complete_controlnutri_page.dart';
import 'package:app_mft/pages/cliente/evaNutri/complete_goalnutri_page.dart';
import 'package:app_mft/pages/cliente/evaFis/complete_goalphysic_page.dart';
import 'package:app_mft/pages/cliente/evaNutri/complete_macrosnutri_page.dart';
import 'package:app_mft/pages/cliente/goals_page.dart';
import 'package:app_mft/pages/cliente/home_client_page.dart';
import 'package:app_mft/pages/cliente/profile_page.dart';
import 'package:app_mft/pages/cliente/programaphysic/list_physicrutines_page.dart';
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

          'showSelectEvas' :(BuildContext context) => ShowEvaluationsPage(),
          //evaNutricional
          'completeGoalN' :(BuildContext context) =>CompleteGoalNutriPage(),
          'completeMacrosN' :(BuildContext context) => CompleteMacrosNutriPage(),
          'completeControlN' :(BuildContext context) => CompleteControlNutriPage(),
          //evaFisica
          'completeGoalF' :(BuildContext context) =>CompleteGoalPhysPage(),
          'completeOperatF' :(BuildContext context) =>CompleteOperationPhysicPage(),
          'completeControlF' :(BuildContext context) =>CompleteControlPhysicPage(),

          //programa fisico 
          'listPhysicRutines' :(BuildContext context) =>ListPhysicRutinesPage(),
        
          'home' :(BuildContext context) =>HomeClientPage(),          
          'programs' :(BuildContext context) =>ProgramsPage(),
          'profClie' :(BuildContext context) =>ProfilePage(),
          'goalsClie' :(BuildContext context) =>GoalsPage(),
        },

        );
  }
}
