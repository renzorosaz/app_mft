import 'package:flutter/material.dart';

class RateProgramaPhysicPage extends StatefulWidget {
  RateProgramaPhysicPage({Key key}) : super(key: key);

  @override
  _RateProgramaPhysicPageState createState() => _RateProgramaPhysicPageState();
}

class _RateProgramaPhysicPageState extends State<RateProgramaPhysicPage> {

var _emojis = ['😃', '😜', '🤓', '😁', '😂', '😞'];
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:Column(
         children: [
           Text(
                      '${_emojis[_value.toInt()]}',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(_emojis[0], softWrap: true),
                              Expanded(
                                child: Slider(
                                  value: _value,
                                  //label: _emojis[_value.toInt()],
                                  min: 0.0,
                                  max: 5.0,
                                  divisions: 5,

                                  onChangeStart: (double value) {
                                    print('Start value is ' + value.toString());
                                  },
                                  onChangeEnd: (double value) {
                                    print(
                                        'Finish value is ' + value.toString());
                                  },
                                  onChanged: (double value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  },
                                  activeColor: Colors.white,
                                  inactiveColor: Colors.black45,
                                ),
                              ),
                              Text(
                                _emojis[5],
                                softWrap: true,
                              )
                            ],
                          ),
                        )),
         ],
       ),
    );
  }
}