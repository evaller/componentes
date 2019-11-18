
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email = '';
  String _password = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('inputs de texto'),
        ),
        body: ListView( 
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
          children: <Widget>[
            _crearInput(),
            Divider(),
            _crearEmail(),
            Divider(),
            _crearPersona(),
             Divider(),
            _crearPassword(),

          ]
      ,) 
    );
  }

   Widget _crearPassword() {

    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
       
        hintText: 'password',
        labelText: 'Password',
        suffixIcon: Icon( Icons.lock_open),
        icon : Icon( Icons.lock)
        
        ),
      onChanged: (valor) {
        setState(() {
            _password = valor;
        });

      },

    );
  }

  Widget _crearInput() {

    return TextField(
      //autofocus : true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras 0'),
        hintText: 'Nombre de la persona',
        labelText: 'nombre',
        helperText: 'solo es el nombre',
        suffixIcon: Icon( Icons.accessibility),
        icon : Icon( Icons.account_circle)
        
        ),
      onChanged: (valor) {
        setState(() {
            _nombre = valor;
        });

      },

    );
  }

    _crearEmail() {

      return TextField(
     keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
      
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon( Icons.email),
        icon : Icon( Icons.email)
        
        ),
      onChanged: (valor) =>setState(() {
            _email = valor;
        })

    );



    }


Widget _crearPersona() {

  return ListTile(
    title : Text('nombre es : $_nombre'),
    subtitle: Text('email es : $_email'),


  );

}




}