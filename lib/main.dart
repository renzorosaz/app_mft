import 'package:app_mft/pages/cliente/evaFis/complete_controlphysic_page.dart';
import 'package:app_mft/pages/cliente/evaFis/complete_operationphysic_page.dart';
import 'package:app_mft/pages/cliente/evaNutri/complete_controlnutri_page.dart';
import 'package:app_mft/pages/cliente/evaNutri/complete_goalnutri_page.dart';
import 'package:app_mft/pages/cliente/evaFis/complete_goalphysic_page.dart';
import 'package:app_mft/pages/cliente/evaNutri/complete_macrosnutri_page.dart';
import 'package:app_mft/pages/cliente/goals_page.dart';
import 'package:app_mft/pages/cliente/home_client_page.dart';
import 'package:app_mft/pages/cliente/profile_page.dart';
import 'package:app_mft/pages/cliente/programanutri/list_menudia_page.dart';
import 'package:app_mft/pages/cliente/programanutri/list_nutrirutines_page.dart';
import 'package:app_mft/pages/cliente/programaphysic/list_exercises_page.dart';
import 'package:app_mft/pages/cliente/programaphysic/list_physicrutines_page.dart';
import 'package:app_mft/pages/cliente/programaphysic/rate_programphysic_page.dart';
import 'package:app_mft/pages/cliente/programs_page.dart';
import 'package:app_mft/pages/physicaltrainer/create_physicsrutines_page.dart';
import 'package:app_mft/pages/cliente/show_evaluations_page.dart';
import 'package:app_mft/pages/login_user_page.dart';
import 'package:app_mft/pages/physicaltrainer/list_clients_page.dart';
import 'package:app_mft/pages/register_user_page.dart';
import 'package:app_mft/widgets/calendar_progress.dart';
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
      theme: ThemeData(fontFamily: 'Exo2'),
      debugShowCheckedModeBanner: false,
      title: 'MFT APP',
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginUserPage(),
        'register': (BuildContext context) => RegisterUserPage(),
        'showSelectEvas': (BuildContext context) => ShowEvaluationsPage(),

        //evaNutricional
        'completeGoalN': (BuildContext context) => CompleteGoalNutriPage(),
        'completeMacrosN': (BuildContext context) => CompleteMacrosNutriPage(),
        'completeControlN': (BuildContext context) =>
            CompleteControlNutriPage(),
        //evaFisica
        'completeGoalF': (BuildContext context) => CompleteGoalPhysPage(),
        'completeOperatF': (BuildContext context) =>
            CompleteOperationPhysicPage(),
        'completeControlF': (BuildContext context) =>
            CompleteControlPhysicPage(),

        //programa fisico
        'createPhysicRutines': (BuildContext context) =>
            CreatePhysicRutinesPage(),
        'listClients':(BuildContext context)=>ListClientsPage(),

        //cliente
        'home': (BuildContext context) => HomeClientPage(),
        'profClie': (BuildContext context) => ProfilePage(),
        'goalsClie': (BuildContext context) => GoalsPage(),
        
        'programs': (BuildContext context) => ProgramsPage(),

        'listPhysicRutines': (BuildContext context) => ListPhysicRutinesPage(),
        'listExcercises': (BuildContext contect) => ListExcercisesPage(),

        'listNutriRutines': (BuildContext context) => ListNutriRutinesPage(),
        'listMenuDia': (BuildContext context) => ListMenuDiaPage(),

        'ratePhysic': (BuildContext context) => RateProgramaPhysicPage(),

        'calendar': (BuildContext context) => CalendarProgress(),
      },
    );
  }
}
