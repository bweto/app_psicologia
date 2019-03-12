import 'package:flutter/material.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flare_flutter/flare_controls.dart';

import './home.dart';
import './registration.dart';

import '../helppers/colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                //Image.asset('assets/diamond.png'),
                SizedBox(height: 16.0),
                Text('Psicologia'),
              ],
            ),
            SizedBox(height: 120.0),
            AccentColorOverride(
              color: psDarkPurple,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: _userController,
                decoration: InputDecoration(
                  //filled: true,
                  labelText: 'Correo Electrónico',
                ),
              ),
            ),
              SizedBox( height: 12.0,),
            AccentColorOverride(
              color: psDarkPurple,
               child: TextField(
                 controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                ),
                 obscureText: true,
            ),
             ),
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text('Iniciar sesión',style: TextStyle(color: Colors.white),),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                  elevation: 8.0,

                  onPressed: (){
                    Navigator.pop(context);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AccentColorOverride extends StatelessWidget {
  const AccentColorOverride({Key key, this.color, this.child})
      : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: child,
      data: Theme.of(context).copyWith(
        accentColor: color,
        brightness: Brightness.dark,
      ),
    );
  }
}
