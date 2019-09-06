import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MaterialApp(
    title:"IBK Construction",
    home: MainConstructor(),
  ));
}

class MainConstructor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue[900],
              Color(0xff000138),
            ],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomCenter,
                stops: [0.0,1.0],
                tileMode: TileMode.clamp),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Color(0xff000138),
                  child: Image.asset('images/logo.jpg', scale: 1.0),
                  radius: 36,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('IBK Construction Group',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                  child: new TextFormField(
                    decoration: new InputDecoration(
                      labelStyle: TextStyle(
                          color: Colors.blueGrey[50]
                      ),
                      fillColor: Colors.blue[50].withOpacity(0.2),
                      filled: true,
                      labelText: 'User Name'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                  child:TextField(
                    obscureText: true,
                    decoration: new InputDecoration(
                        labelStyle: TextStyle(
                            color: Colors.blueGrey[50]
                        ),
                        fillColor: Colors.blue[50].withOpacity(0.2),
                        filled: true,
                        labelText: 'Password'
                    ),
                  )
                ),
                FlatButton(child: Text('Log In', ), onPressed: () {},)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

