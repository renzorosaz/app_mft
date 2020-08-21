import 'package:app_mft/models/dto/req/reqCreateUser.dart';
import 'package:app_mft/provider/login/usuario_provider.dart';
import 'package:app_mft/utils/utils.dart' as utils;
import 'package:flutter/material.dart';

class RegisterUserPage extends StatefulWidget {
  @override
  _RegisterUserPageState createState() => _RegisterUserPageState();
}

class _RegisterUserPageState extends State<RegisterUserPage> {
  final formKey = GlobalKey<FormState>();

  final usuarioProvider = new UsuariosProvider();

  ReqCreateUser usuario = new ReqCreateUser();

  Person person = new Person();

  @override
  Widget build(BuildContext context) {
    final ReqCreateUser usuarioArgs = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        body: _crearFondo(context));
  }

  

  Widget _crearBoton() {
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
      child: Container(
        child: Text('Registrarme'),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: 1.0,
      color: Colors.blue[600],
      textColor: Colors.white,
      onPressed: _submit,
    );
  }

  void _submit() {
    /* if (!formKey.currentState.validate()) return; */

    formKey.currentState.save();

    //usuario.username = "javi11";
    print(usuario.username);
    //usuario.password = "234234234";
    print(usuario.password);
    //usuario.email = "renzoso@gmail.com";
    print(usuario.email);
    // usuario.profile = 1;
    print(usuario.profile);
    print(person.name);
    print(person.lastName);
    // person.name = "javier";
    //person.lastName = "pedro";
    usuario.person = person;
    print(person.toJson());
    print(usuario.toJson()); 
    /* usuarioProvider.crearUsuario(usuario);
   */
   Navigator.pushNamed(context, 'showEvas');
    
  }

  Widget _crearUsername() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        /* initialValue: cliente.nombre, */
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          icon: Icon(Icons.person, color: Colors.blueAccent),
          hintText: 'Usuario',
          labelText: 'Ingresa tu usuario',
        ),
        onSaved: (value) => usuario.username = value,

        /* validator: (value) {
          if (value.length < 3) {
            return 'Ingrese su nombre completo';
          } else {
            return null;
          }
        }, */
      ),
    );
  }

  Widget _crearPass() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.lock, color: Colors.blueAccent),
          labelText: 'Contraseña',
        ),
        onSaved: (value) => usuario.password = value,
        validator: (value) {
          if (utils.validarPassword(value)) {
            return 'Debe ser mayor de 8 dígitos';
          } else {
            return null;
          }
        },
      ),
    );
  }

  Widget _crearEmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        /*   initialValue: cliente.correoElec, */
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.alternate_email, color: Colors.blueAccent),
          hintText: 'ejemplo@mfth4l.com',
          labelText: 'Correo electrónico',
        ),
        onSaved: (value) => usuario.email = value,
        /* validator: (value) {
          if (utils.validarCorreo(value)) {
            return 'El correo electronico no es valido';
          } else {
            return null;
          }
        }, */
      ),
    );
  }

  Widget _crearTipoUsuario() {
    
    return DropdownButton(
        value: usuario.profile,
        items: [
          DropdownMenuItem(child: Text("Entrenador"), value: 3),
          DropdownMenuItem(child: Text("Nutricionista"), value: 4),
          DropdownMenuItem(child: Text("Cliente"), value: 5)
        ],
        onChanged: (value) {
          setState(() {
            usuario.profile = value;
          });
        });
  }

  Widget _crearNombre() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          icon: Icon(Icons.personal_video, color: Colors.blueAccent),
          hintText: 'Nombre',
          labelText: 'Ingresa tu nombre',
        ),
         onSaved: (value) => person.name = value,
        /* validator: (value) {
          if (value.length < 9 || value.length > 10) {
            return 'Debe tener 9 dígitos';
          } else {
            return null;
          }
        }, */
      ),
    );
  }

  Widget _crearApellido() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        /* initialValue: cliente.apellido, */
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          icon: Icon(Icons.person, color: Colors.blueAccent),
          hintText: 'Apellidos',
          labelText: 'Apellidos',
        ),
         onSaved: (value) => person.lastName = value,
        /* validator: (value) {
          if (value.length < 3) {
            return 'Ingrese su apellido';
          } else {
            return null;
          }
        }, */
      ),
    );
  }

  Widget _crearSexo() {
    return DropdownButton(
        value: usuario.sexo,
        items: [
          DropdownMenuItem(child: Text("Hombre"), value: 1),
          DropdownMenuItem(child: Text("Mujer"), value: 2),
          DropdownMenuItem(child: Text("Prefiero no decirlo"), value: 3)
        ],
        onChanged: (value) {
          setState(() {
            usuario.sexo = value;
          });
        });
  }

Widget _crearFondo(BuildContext context) {
  final size = MediaQuery.of(context).size;

  final fondoMFT = Container(
    height: size.height * 1.1,
    width: size.width * 1,
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: <Color>[
      Color.fromRGBO(64, 230, 130, 1.0),
      Color.fromRGBO(5, 117, 230, 1.0),
    ])),
  );

  final logoMFT = SafeArea(
    child: Container(
      /* padding: EdgeInsets.symmetric(horizontal:size.width*0.2), */ /* 
      margin: EdgeInsets.symmetric(horizontal:size.height*0.25, vertical: size.width*0.25), */
      margin: EdgeInsets.symmetric(
          horizontal: size.height * 0.15, vertical: size.width * 0.15),
      height: size.height * 0.20,
      width: size.width * 0.40,
      child: Image(
        image: AssetImage('assets/logomft.png'),
        fit: BoxFit.contain,
      ),
    ),
  );

  final iconosMFT = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        margin: EdgeInsets.symmetric(vertical: size.width * 0.10),
        width: 100,
        height: 100,
        child: Image(
          image: AssetImage('assets/nutricono.png'),
          color: Colors.white.withOpacity(0.5),
        ),
      ),
      Container(
        width: 100,
        height: 100,
        margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),
        child: Image(
          image: AssetImage('assets/physicono.png'),
          color: Colors.white.withOpacity(0.5),
        ),
      ),
    ],
  );

  final bievenida = Column(
    children: [
      Container(
        padding: EdgeInsets.only(top: 260, left: 20),
    child: Text('Registro',
        style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold)),
      ),

    ],

  );

  final form = Column(
        children: [
    //widget para separar de arriba abajo
    SafeArea(
      child: Container(
        height: 250,
      ),
    ),

    Form(
      key: formKey,
      child: Column(
        children: [
        SizedBox(
          height: 20.0,
        ),
        Container(
          margin: EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Usuario',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.bold),
                  ),
                  _crearTipoUsuario(),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Sexo',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: "Schyler",
                        fontWeight: FontWeight.bold),
                  ),
                  _crearSexo(),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        _crearUsername(),
        SizedBox(
          height: 20.0,
        ),
        _crearPass(),
        SizedBox(
          height: 20.0,
        ),
        _crearEmail(),
        SizedBox(
          height: 20.0,
        ),
        _crearNombre(),
        SizedBox(
          height: 20.0,
        ),
        _crearApellido(),
        SizedBox(
          height: 20.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        _crearBoton()
      ]),
    ),
    SizedBox(height: 15),
    SizedBox(
      height: 80,
    )
        ],
      );

  return SingleChildScrollView(
      child: Stack(
      children: [fondoMFT, logoMFT, bievenida, iconosMFT,form],
    ),
  );
}
}


