import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/perfil.jpg',
                        ),
                      ),
                    ),
                    height: 350.0,
                  ),
                  Container(
                    height: 350.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.grey.withOpacity(0.5),
                              Colors.black,
                            ],
                            stops: [
                              1.0,
                              0.5
                            ])),
                  )
                ]),
                Container(
                  width: 250,
                  margin: EdgeInsets.symmetric(horizontal: 120, vertical: 80),
                  child: Column(
                    children: [
                      Title(
                          color: Colors.white,
                          child: Text(
                            "Renzo Rosas",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                            textAlign: TextAlign.center,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text("renzo.rovi@gmail.com",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13)),
                          Icon(
                            Icons.check_circle,
                            color: Colors.greenAccent,
                            size: 20,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text("+51 972 696 048",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13)),
                            Icon(
                              Icons.check_circle,
                              color: Colors.greenAccent,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 240,
                        height: 200,
                        child: Center(
                            child: Image.asset(
                          "assets/perfil.jpg",
                          fit: BoxFit.cover,
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 229),
                    child: Text("ACTIVIDADES",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.grey)),
                  ),
                  Text(
                    "VER TODO",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}