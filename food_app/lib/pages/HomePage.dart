import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Widgets/AppBarWidget.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //Customized AppBar
          Appbarwidget(),

          //Search

          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3))
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.search,
                      color: Colors.grey,
                    ),
                    Container(
                      height: 50,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'What would you like?',
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.filter)
                  ],
                ),
              ),
            ),
          )



        ],
      ),
    );
  }
}
