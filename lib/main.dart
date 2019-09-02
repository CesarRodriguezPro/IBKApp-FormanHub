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
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue[300],
            Colors.indigo[900],
          ],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              stops: [0.0,0.9],
              tileMode: TileMode.clamp),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Color(0xff000138),
                child: Image.asset('images/logo.jpg', scale: 0.6),
                radius: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('IBK Construction Group',
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                child: new TextFormField(
                  decoration: new InputDecoration(
                    labelStyle: TextStyle(
                        color: Colors.blueGrey[900]
                    ),
                    fillColor: Colors.blue[50],
                    filled: true,
                    icon:new Icon(
                      Icons.account_circle,
                      color: Colors.blueGrey[100],),
                    labelText: 'Username',

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                child: new TextFormField(
                  decoration: new InputDecoration(
                    labelStyle: TextStyle(

                        color: Colors.blueGrey[900]
                    ),
                    fillColor: Colors.blue[50],
                    filled: true,
                    icon:new Icon(
                      Icons.vpn_key,
                      color: Colors.blueGrey[100],),
                    labelText: 'password',

                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

