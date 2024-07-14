import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:food_app/Widgets/AppBarWidget.dart';
import 'package:food_app/Widgets/PopularItemWidget.dart';
import '../Widgets/CategoriesWidget.dart';
import '../Widgets/NewestItem.dart';
import '../Widgets/DrawerWidget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.grey,
                    ),
                    Container(
                      height: 50,
                      width: 310,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'What would you like?',
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    Icon(
                        Icons.filter
                    )
                  ],
                ),
              ),
            ),
          ),

// category

          Padding(
            padding: EdgeInsets.only(top: 15, left: 10),
            child: Text("Categories",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          Categorieswidget(),

//Popular Item

          Padding(
            padding: EdgeInsets.only(top: 15, left: 10),
            child: Text("Popular",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          Popularitemwidget(),

//Newest Item

          Padding(
            padding: EdgeInsets.only(top: 15, left: 10),
            child: Text("Newest Item",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          Newestitem(),
        ],
      ),
      
//Drawer
    drawer: Drawerwidget(),
    floatingActionButton: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(
            color: Colors.white,
          spreadRadius: 2,
          blurRadius: 10,

        )]
      ),
        child :FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "cartPage");
          },
          child: Icon(
            CupertinoIcons.cart,
            size: 28,
              color: Colors.red,
          ),
          backgroundColor: Colors.white,
          
        )
    ),
    );
  }
}
