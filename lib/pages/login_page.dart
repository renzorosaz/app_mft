import 'package:app_mft/models/dto/req/reqLoginUser.dart';
import 'package:app_mft/provider/login/usuario_provider.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  PermissionStatus _status;
  final formKey = GlobalKey<FormState>();

  final usuarioProvider = new UsuariosProvider();
  ReqLoginUser user = new ReqLoginUser();

  @override
  void initState() {

    super.initState();
    _askPermission();
    PermissionHandler().checkPermissionStatus(PermissionGroup.storage);
  }

  Future<void> _updateStatus(PermissionStatus status) async {
    if (status != _status) {
      setState(() {
        _status = status;
        print(status);
      });
    }
  }

  _askPermission() async {
    PermissionHandler().requestPermissions([PermissionGroup.storage]).then(_onStatusRequested);
  }

  Future<void> _onStatusRequested(Map<PermissionGroup, PermissionStatus> statuses) async {
    final status = statuses[PermissionGroup.storage];
    _updateStatus(status);
  }

  _login() async {

      setState(() {
      print(user.username);
      print(user.password);
      
      formKey.currentState.save();
      usuarioProvider.login(user);

      if (!formKey.currentState.validate()) {
        return ;
      }

      //si el login es correcto, lo enviara a la siguiente pagina,
      Navigator.pushNamed(context, 'showEvas');
      // y sino que le muestre un showDialog(
        /*  context: context,
          builder: (BuildContext context){
              return AlertDialog(
                title: Text("Alert Dialog"),
                content: Text("Dialog Content"),
              );
          }
        ) */
     
      

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [_crearFondo(context), _loginForm(context)],
    ));
  }

  Widget _loginForm(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        child: Column(
      children: [
        //widget para separar de arriba abajo
        SafeArea(
          child: Container(
            height: 250,
          ),
        ),

        Container(
          width: size.width * 0.85,
          padding: EdgeInsets.symmetric(vertical: 50.0),
          margin: EdgeInsets.symmetric(vertical: 10.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 3.0,
                    offset: Offset(0.0, 5.0),
                    spreadRadius: 3.0)
              ]),
          child: Form(
            key: formKey,
            child: Column(children: [
              Text('Ingreso', style: TextStyle(fontSize: 20.0)),
              SizedBox(
                height: 30.0,
              ),
              _crearUsername(),
              SizedBox(
                height: 30.0,
              ),
              _crearPassword(),
              SizedBox(
                height: 30.0,
              ),
              _crearBoton()
            ]),
          ),
        ),
        Text('¿Olvidó la contraseña?'),
        SizedBox(height: 15),
        GestureDetector(
          child: Text(
            '¿No tienes cuenta? REGISTRATE',
            style: TextStyle(
              color: Colors.blueAccent,
            ),
          ),
          onTap: () {
            Navigator.of(context).pushNamed('register');
          },
        ),
        SizedBox(
          height: 80,
        )
      ],
    ));
  }

  Widget _crearBoton() {
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
      child: Container(
        child: Text('Ingresar'),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: 1.0,
      color: Colors.blue[600],
      textColor: Colors.white,
      onPressed: _login,
    );
  }

  Widget _crearPassword() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.lock, color: Colors.blueAccent),
            labelText: 'Contraseña',
          ),
          onSaved: (value) => user.password = value,
          validator: (text) {
            if (text.length == 0) {
              return "Este campo contraseña es requerido";
            } else if (text.length <= 2) {
              return "Su contraseña debe ser al menos de 5 caracteres";
            } 
            return null;
          },
        )); /*  */
  }

  Widget _crearUsername() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.person, color: Colors.blueAccent),
          hintText: 'usuario1',
          labelText: 'usuario',
        ),
        onSaved: (value) => user.username = value,
         validator: (text) {
          if (text.length == 0) {
            return "Este campo correo es requerido";
          }
          /* else if (!emailRegExp.hasMatch(text)) {
            return "El formato para correo no es correcto";
          } */
          return null;
        }, 
        
      ),
    );
  }

  Widget _crearFondo(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final fondoMFT = Container(
      height: size.height * 0.4,
      width: double.infinity,
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
          margin: EdgeInsets.symmetric(vertical: size.width * 0.25),
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

    return Stack(
      children: [fondoMFT, logoMFT, iconosMFT],
    );
  }
}
