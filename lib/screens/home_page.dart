import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketlakay/colors.dart';
import 'package:marketlakay/widgets/item_list_widget.dart';
import 'package:marketlakay/widgets/item_widget.dart';

import '../widgets/categories_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          SafeArea(
            child: SingleChildScrollView(
                child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 20, left: 15, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 30,
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 2)
                            ]),
                        child: InkWell(
                          onTap: () {},
                          child: const Icon(
                            CupertinoIcons.cart,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Welcome",
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("What do you want delivered?",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width * 0.68,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Search...", border: InputBorder.none),
                        ),
                      ),
                      Icon(Icons.filter_list)
                    ],
                  ),
                ),
              ],
            )),
          ),
          Container(
            //width: MediaQuery.of(context).size.width,
            //height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(
              top: 20,
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                )),
            child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoriesWidget(),
                  Container(
                      //width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      //color: Colors.amber,
                      child: ItemListWidget()),
                ]),
          )
        ],
      ),
    );
  }
}
