// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:coffee_app/util/coffe_type.dart';
import 'package:coffee_app/util/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of coffee types
  final List coffeeType = [
//[coffee type, isSelectd]
    [
      'Cappucino',
      true,
    ],
    [
      'Latte',
      false,
    ],
    [
      'Black',
      false,
    ],
    [
      'Tea',
      false,
    ],
  ];
  //user tapped on coffee types
  void coffeeTypeSelected(int index) {
    setState(
      () {
        //this for loop makes every selection false
        for (int i = 0; i < coffeeType.length; i++) {
          coffeeType[i][1] = false;
        }
        coffeeType[index][1] = true;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          //Text->Find the best coffee for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Find the best coffee for you",
              //style: GoogleFonts.poppins(fontSize: 36),
              style: GoogleFonts.bebasNeue(
                fontSize: 60,
              ),

              // style: TextStyle(fontSize: 36),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            //TextField->For the user to type out some information
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find your coffee...',
                focusedBorder:
                    OutlineInputBorder(), //outline for the border so that we can see the search bar
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
              ),
            ),
          ),

          SizedBox(
            height: 25,
          ),
          //Horizontal listview of coffee types
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffeeType.length,
              itemBuilder: (context, index) {
                return CoffeeType(
                  coffeeType: coffeeType[index][0],
                  isSelected: coffeeType[index][1],
                  onTap: () {
                    coffeeTypeSelected(index);
                  },
                );
              },
            ),
          ),
          //Horizontal listview of coffee tiles
          Expanded(
              child: GestureDetector(
            onTap:
                () => //!==========================================================================
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetailsPage()),
            ),
            //!==========================================================================,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTile(
                  coffeeImagePath: 'lib/Images/Coffee2.jpg',
                  coffeeName: 'Latte',
                  coffeePrice: '399',
                ),
                CoffeeTile(
                  coffeeImagePath: 'lib/Images/Coffee4.jpg',
                  coffeeName: 'Cappucino',
                  coffeePrice: '299',
                ),
                CoffeeTile(
                  coffeeImagePath: 'lib/Images/Coffee3.jpg',
                  coffeeName: 'Ombre Shorts',
                  coffeePrice: '999',
                ),
                CoffeeTile(
                  coffeeImagePath: 'lib/Images/Coffee5.jpg',
                  coffeeName: 'The Experience',
                  coffeePrice: '5999',
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
