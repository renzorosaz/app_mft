import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarProgress extends StatefulWidget {
  CalendarProgress({Key key}) : super(key: key);

  @override
  _CalendarProgressState createState() => _CalendarProgressState();
}

class _CalendarProgressState extends State<CalendarProgress> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  List<String> days = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi calendario"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableCalendar(
              startingDayOfWeek: StartingDayOfWeek.monday,
              initialCalendarFormat: CalendarFormat.month,
              calendarController: _controller,
              calendarStyle: CalendarStyle(
                todayColor: Colors.blueAccent,
              ),
              headerStyle: HeaderStyle(
                  centerHeaderTitle: true,
                  formatButtonDecoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20.0)),
                  formatButtonTextStyle: TextStyle(color: Colors.white)),
              onDaySelected: (date, events) {
                print(date.toIso8601String());
                /*  days.add(date.toIso8601String());
                    print(days); */
              },
              builders: CalendarBuilders(
                selectedDayBuilder: (context, date, events) => Container(
                  margin: EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueAccent
                    ),
                    child: Text(date.day.toString(),style: TextStyle(
                      color:Colors.white
                    ),)),
              ),
            ),
            Text("Dias seleccionados : $days"),
            Text("Lista de Rutinas :")
          ],
        ),
      ),
    );
  }
}
