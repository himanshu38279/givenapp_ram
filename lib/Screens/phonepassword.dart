import 'package:flutter/material.dart';
import 'package:vendor_cits_task/Screens/forgotpassword.dart';

class phonepassword extends StatefulWidget {
  //const phonepassword({ Key? key }) : super(key: key);

  @override
  _phonepasswordState createState() => _phonepasswordState();
}

class _phonepasswordState extends State<phonepassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text("Login"),
          Center(
            child: Container(
              height: 400,
              child: Image(
                image: AssetImage('assets/logo.png'),
              ),
            ),
          ),
          Expanded(
              child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 10.0,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 250, top: 30),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 20),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          autofocus: false,
                          // controller: _emailController,
                          //validator: validateEmail,
                          // onSaved: (value) => _email = value,
                          // style: style,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            hintText: "Phone",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            prefixIcon: Visibility(
                              //visible: isVisible,
                              child: Icon(
                                Icons.phone,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 20),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autofocus: false,
                          // controller: _emailController,
                          //validator: validateEmail,
                          // onSaved: (value) => _email = value,
                          // style: style,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            hintText: "password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            prefixIcon: Visibility(
                              //visible: isVisible,
                              child: Icon(
                                Icons.lock,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: InkWell(
                          onTap: () {
                            print("click on the forgot password");
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => forgot()));
                          },
                          child: Text(
                            "Forgot password",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 320,
                        height: 50,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Colors.blue,
                          onPressed: () {
                            print("login button ");
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 250),
                        child: FloatingActionButton(
                          onPressed: () {
                            print("floating button");
                          },
                          child: Icon(Icons.account_box),
                          backgroundColor: Colors.blue[100],
                        ),
                      )
                    ],
                  )
                  // color: Colors.white,
                  ))
        ],
      ),
    );
  }
}
