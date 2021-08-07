//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:vendor_cits_task/Screens/loginpage.dart';
import 'package:vendor_cits_task/Screens/phoneotp.dart';
import 'package:vendor_cits_task/Screens/phonepassword.dart';

class forgot extends StatefulWidget {
  // const forgot({ Key? key }) : super(key: key);

  @override
  _forgotState createState() => _forgotState();
}

class _forgotState extends State<forgot> {
  // int group = 1;
  String optionchoice = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Container(
                      color: Colors.blue,
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Text("Login With")),
                  content: Column(
                    children: [
                      Row(
                        children: [
                          Radio(
                              value: 'Email/Password',
                              groupValue: optionchoice,
                              onChanged: handalradio),
                          Text('Email/Password'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 'Phone/Password',
                              groupValue: optionchoice,
                              onChanged: handalradio),
                          Text('Phone/Password'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 'Phone/OTP',
                              groupValue: optionchoice,
                              onChanged: handalradio),
                          Text('Phone/OTP'),
                        ],
                      ),
                    ],
                  ), //Text("You have raised a Alert Dialog Box"),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        print(optionchoice);
                        if (optionchoice == 'Email/Password') {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => homepage()));
                        }
                        if (optionchoice == 'Phone/Password') {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => phonepassword()));
                        }

                        if (optionchoice == 'Phone/OTP') {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => phoneotp()));
                        }
                      },
                      child: Text("okay"),
                    ),
                  ],
                ),
              );
            },
            color: Colors.blue.shade50,
            child: Row(
              children: [
                Text("Login With",
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                SizedBox(
                  width: 90,
                ),
                Text("Email/Password",
                    style: TextStyle(fontSize: 15, color: Colors.blue)),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            //color: Colors.white,
          ),
          RaisedButton(
            onPressed: null,
            color: Colors.blue.shade50,
            child: Row(
              children: [
                Text("Reset With",
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                SizedBox(
                  width: 125,
                ),
                Text("Email/OTP",
                    style: TextStyle(fontSize: 15, color: Colors.blue)),
                Icon(Icons.arrow_drop_down)
              ],
            ),
          )
        ],
      ),
    );
  }

  void handalradio(String value) {
    print(value);

    setState(() {
      optionchoice = value;
    });
  }
}

// RaisedButton(
//             onPressed: () {
//               return showDialog(
//                 context: context,
//                 builder: (ctx) => AlertDialog(
//                   title: Text("Alert Dialog Box"),
//                   content: Text("You have raised a Alert Dialog Box"),
//                   actions: <Widget>[
//                     FlatButton(
//                       onPressed: () {
//                         Navigator.of(ctx).pop();
//                       },
//                       child: Text("okay"),
//                     ),
//                   ],
//                 ),
//               );
//             },
//             child: Text("Show alert Dialog box"),
//           ),
