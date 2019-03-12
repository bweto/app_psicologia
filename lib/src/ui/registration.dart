import 'package:flutter/material.dart';
import './home.dart';

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Padding(
          padding: EdgeInsets.all(10.0),
             child: _email(),
          ),
        Padding(
          padding: EdgeInsets.all(10.0),
             child: _password(),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
              child: _confirPassword(),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
           child:  _submitButton(context),
        ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _email() {
  return TextField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      labelText: 'Correo Electrónico',
      border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    ),
  );
}

Widget _password() {
  return TextField(
    obscureText: true,
    decoration: InputDecoration(
      labelText: 'Contraseña',
      border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    ),
  );
}

Widget _confirPassword() {
  return TextField(
    obscureText: true,
    decoration: InputDecoration(
      labelText: 'Confirmar Contraseña',
      border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    ),
  );
}

Widget _submitButton(BuildContext context) {
  return RaisedButton(
    child: Text('Regitrar'),
    color: Colors.red[700],
    onPressed: ( ) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    },
    textColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  );
}

