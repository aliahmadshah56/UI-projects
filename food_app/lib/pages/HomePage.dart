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

        ],
      ),
    );
  }
}
