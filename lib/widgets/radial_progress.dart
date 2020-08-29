import 'dart:math';

import 'package:flutter/material.dart';

class RadialProgress extends StatefulWidget {

  final porcentaje;
  final Color colorPrimario;
  final Color colorSecundario;
  final double grosorPrimario;
  final double grosorSecundario;

  RadialProgress({
    @required this.porcentaje,
    this.colorPrimario= Colors.blue, 
    this.colorSecundario= Colors.grey, 
    this.grosorPrimario= 4,
    this.grosorSecundario= 4
    
    });

  @override
  _RadialProgressState createState() => _RadialProgressState();
}

class _RadialProgressState extends State<RadialProgress> with SingleTickerProviderStateMixin{

  AnimationController controller;
  double porcentajeAnterior;

  @override
  void initState() {

    porcentajeAnterior = widget.porcentaje;

    controller = new AnimationController(vsync: this, duration: Duration(milliseconds: 200));


    super.initState();
  }

  @override
  void dispose() { 
    controller.dispose();  
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    controller.forward(from: 0);

    final diferenciaAnimar = widget.porcentaje - porcentajeAnterior;
    porcentajeAnterior = widget.porcentaje;

    return AnimatedBuilder(
      animation: controller,
      
      builder: (BuildContext context, Widget child) {
       return Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: double.infinity,
          child: CustomPaint(
            painter: _MiRadialProgress(
              (widget.porcentaje- diferenciaAnimar) + (diferenciaAnimar * controller.value),
              widget.colorPrimario,
              widget.colorSecundario,
              widget.grosorPrimario,
              widget.grosorSecundario
            ),
          )
        );
      },
    );

   
  }
}

class _MiRadialProgress extends CustomPainter{

  final porcentaje;
  final Color colorPrimario;
    final Color colorSecundario;
    final double grosorPrimario;
    final double grosorSecundario;


  _MiRadialProgress(
    this.porcentaje,
    this.colorPrimario,
    this.colorSecundario,
    this.grosorPrimario,
    this.grosorSecundario
  );

  @override
  void paint(Canvas canvas,  Size size) {

      final Rect rect = new Rect.fromCircle(
         center: Offset(0,0),
         radius: 100 
      );

    final Gradient gradiente = new LinearGradient(
      colors: <Color>[
        Color(0xffC012FF),
        Color(0xff6D05E8),
        Colors.redAccent
      ]
      );


        final paint = new Paint()
    ..strokeWidth = grosorSecundario
    ..color   = colorSecundario
    ..style    = PaintingStyle.stroke;

    Offset center= new Offset(size.width *0.5, size.height /2 );

    double radio= min(size.width * 0.5, size.height * 0.5);

    canvas.drawCircle(center, radio, paint);

//arco

final paintArco= new Paint()
  ..strokeWidth = grosorPrimario
    /* ..color   = colorPrimario */
    ..shader     = gradiente.createShader(rect)
    ..strokeCap = StrokeCap.round
    ..style    = PaintingStyle.stroke;

  //parte que se llenará
  double arcAngle = 2 * pi * ( porcentaje / 100);// sobre la cantida total de gramos - es el tamaño de la animación

  canvas.drawArc(
    Rect.fromCircle(center: center, radius: radio),
    -pi/2,
    arcAngle,
    false,
    paintArco);

}    


  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;

}