import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyecto_digilist/utilities/constants.dart';
import 'Inici.dart';

class registro extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<registro> {
  bool _rememberMe = false;

  Widget _nombre() {
    
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         new Center(
          child: Image(
          image:  new AssetImage('logos/logo_proyecto.png'),
          height: 300,
          alignment: Alignment.center,        
        ),
    ),
        Text(
          'Name',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              hintText: 'Enter your Name',
              hintStyle: kHintTextStyle,
              
            ),
          ),
        ),
      ],
    );
  }

  Widget _numero() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Numero',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 25.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.numbers,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              hintText: 'Enter your Number',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              hintText: 'Enter your Email',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              hintText: 'Enter your Password',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(
      height: 40.0,
      alignment: Alignment.centerRight,
      child: Text(
        'Forgot Password?',
        style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckbox() {
    return Container(
      height: 30.0,
      child: Row(
        children: <Widget>[
          Theme(
            data:
                ThemeData(unselectedWidgetColor: Color.fromARGB(255, 0, 0, 0)),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Color.fromARGB(255, 251, 119, 11),
              activeColor: Color.fromARGB(255, 255, 255, 255),
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

//Aqui va el boton de login

 

  Widget _buildSignupBtn() {
    return GestureDetector(
      onTap: () => print('Sign Up Button Pressed'),
      child: RichText(
        text: TextSpan(),
      ),
    );
  }

  Widget _buildLoginBt2n() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Color.fromARGB(255, 0, 0, 0),
          elevation: 2,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => Inicio_page()));
        },
        child: Text('Registrar'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(255, 114, 114, 114),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 30.0),
                      SizedBox(
                        height: 30.0,
                      ),
                      _nombre(),
                      _numero(),
                      _buildEmailTF(),
                      _buildPasswordTF(),
                      _buildForgotPasswordBtn(),
                      _buildRememberMeCheckbox(),
                      _buildLoginBt2n(),
                      _buildSignupBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /*Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => print('Login Button Pressed'),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color.fromARGB(255, 244, 8, 8),
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Color.fromARGB(255, 5, 128, 251),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }*/

  FlatButton({void Function() onPressed, EdgeInsets padding, Text child}) {}

  RaisedButton(
      {double elevation,
      void Function() onPressed,
      EdgeInsets padding,
      RoundedRectangleBorder shape,
      Color color,
      Text child}) {}
}
