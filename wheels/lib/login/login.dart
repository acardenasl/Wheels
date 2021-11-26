import 'dart:ui';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:wheels/home/home.dart';
import 'package:wheels/main.dart';

class loginPage extends StatefulWidget {
  static String id = "login";

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffb21b31),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Wheels",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 70.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        print("object");
                      });
                    },
                    child: Text(
                      'Inicia Sesión con tu correo UniAndes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              _textFieldGmail(),
              SizedBox(
                height: 25.0,
              ),
              _textFieldPassword(),
              SizedBox(
                height: 20.0,
              ),
              _huttonSignUp(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldGmail() {
    return _textFieldGeneral(
      labelText: "Correo Uniandes",
      icon: Icons.email_outlined,
      hintText: "@uniandes.edu.co",
      onChanged: (value) {},
    );
  }

  Widget _textFieldPassword() {
    return _textFieldGeneral(
      labelText: "Contraseña",
      onChanged: (value) {},
      icon: Icons.lock_outline_rounded,
      obscuryText: true,
    );
  }

  Widget _huttonSignUp() {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      },
      padding: EdgeInsets.symmetric(
        horizontal: 110.0,
        vertical: 15.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        "Login",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20.0,
        ),
      ),
      color: Colors.white,
    );
  }
}

class _textFieldGeneral extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final Function? onChanged;
  final TextInputType? keyboardType;
  final IconData? icon;
  final bool obscuryText;

  const _textFieldGeneral({
    this.hintText,
    @required this.labelText,
    @required this.onChanged,
    this.keyboardType,
    this.icon,
    this.obscuryText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          keyboardType: keyboardType,
          obscureText: obscuryText,
          decoration: InputDecoration(
            prefixIcon: Icon(icon),
            labelText: labelText,
            hintText: hintText,
          ),
          //onChanged: onChanged,
        ));
  }
}
