import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Login App"
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
               Image.asset('asserts/images/img.png'),
              Padding(padding : EdgeInsets.symmetric(horizontal: 35.0)
              ,child: Column(
                  children: [
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('Login here',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextField(
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                      decoration: InputDecoration(
                        labelText: "username",
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      obscureText: true,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      ),
                      decoration: InputDecoration(
                        labelText: "Passward",
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),ElevatedButton(onPressed: (){},
                        child: const Text(
                          "log in",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0
                          ),
                        ),

                      style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 15,horizontal: 146),

                      ),
        )
                      ,)

                  ],
                ),),
            ],
          ),
        ),
         drawer: Drawer(

         ),
      ),
    );
  }
}

