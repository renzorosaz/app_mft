import 'package:flutter/material.dart';

class ShowEvaluationsPage extends StatefulWidget {
  ShowEvaluationsPage({Key key}) : super(key: key);

  @override
  _ShowEvaluationsPageState createState() => _ShowEvaluationsPageState();
}

class _ShowEvaluationsPageState extends State<ShowEvaluationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40, left: 20),
              child: Text(
                  "Para empezar a disfrutar del Programa de Adaptación MFT tendrás que completar nuestra evaluación diseñado por expertos en nutrición y entrenadores físicos para darte el mejor servicio",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.bold)),
            ),
            _CardsEvaluation(),
          ],
        ),
      ),
    );
  }
}

class _CardsEvaluation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 73),
            child: Text('Evaluacion Estado Nutricional',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold),
                    maxLines: 1,
          ),
          ),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'compGoalNutri');
              },
              child: Container(
                width: 300,
                height: 150,
                child: Container(
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                      ),
                      image: DecorationImage(
                    image: ExactAssetImage('assets/evanutri.jpg'),
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3),BlendMode.darken),
                    fit: BoxFit.cover,
                  )),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 260),
            child: Text('0/3'),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 110),
            child: Text('Evaluacion Estado Físico',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold)),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'compGoalPhysi');
            },
            child: Container(
              width: 300,
              height: 150,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                      ),
                    image: DecorationImage(
                  image: ExactAssetImage('assets/evaphysic.jpg'), 
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3),BlendMode.darken),
                  fit: BoxFit.cover,
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 260),
            child: Text('0/1'),
          ),
        ],
      ),
    );
  }
}