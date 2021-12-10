import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login SAIB'),
          backgroundColor: Colors.yellow,

        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Login Page',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),

                Container(
                  child:  Image(
                    image: AssetImage("images/img.png"),
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1,color: Colors.yellowAccent)
                      ),
                      labelText: 'User Name',
                      labelStyle: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1,color: Colors.yellowAccent)
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),

                Container(

                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),

                    child: RaisedButton(

                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text('Login'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),

              ],
            )));
  }
}