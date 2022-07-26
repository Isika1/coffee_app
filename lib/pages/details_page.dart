// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          Icon(Icons.more_vert),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            Stack(
              //!!==============================================================Stack
              children: [
                Container(
                  height: 440,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          image: AssetImage("lib/Images/Coffee2.jpg"),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  //!!==========================================================Position
                  top: 330,
                  child: BlurryContainer(
                    padding: EdgeInsets.all(20),
                    height:
                        140, //*============================================ Height of the blur container
                    blur: 5,
                    color: Colors.transparent,
                    width: 377,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Cappuccino",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "With Oat Milk",
                              style: TextStyle(
                                color: Color(0xff919296),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "lib/Images/star.svg",
                                  height: 20,
                                  color: Color(0xffd17842),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "(6.983)",
                                  style: TextStyle(color: Color(0xff919296)),
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 42,
                                  width: 42,
                                  decoration: BoxDecoration(
                                      color: Color(0xff101419),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        "lib/Images/star.svg",
                                        color: Color(0xffd17842),
                                        height: 15,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Coffee",
                                        style: TextStyle(
                                            color: Color(0xff919296),
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 42,
                                  width: 42,
                                  decoration: BoxDecoration(
                                      color: Color(0xff101419),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        "lib/Images/star.svg",
                                        color: Color(0xffd17842),
                                        height: 15,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Milk",
                                        style: TextStyle(
                                            color: Color(0xff919296),
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 37,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Color(0xff101419),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                  child: Text(
                                "Medium Roasted",
                                style: TextStyle(
                                    color: Color(0xff919296),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(
                        color: Color(0xff919296), fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "A cappuccino is a coffee-based drink made primarily from espresso and milk.",
                    style: TextStyle(color: Color(0xff919296), fontSize: 15),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Size",
                    style: TextStyle(
                        color: Color(0xff919296),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 37,
                        width: 110,
                        child: Center(
                            child: Text(
                          "S",
                          style: TextStyle(
                            color: Color(0xff919296),
                            fontSize: 18,
                          ),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xffd17842))),
                      ),
                      SizedBox(
                        width: 11,
                      ),
                      Container(
                        height: 37,
                        width: 110,
                        child: Center(
                            child: Text(
                          "M",
                          style: TextStyle(
                            color: Color(0xff919296),
                            fontSize: 18,
                          ),
                        )),
                        decoration: BoxDecoration(
                            color: Color(0xff101419),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      SizedBox(
                        width: 11,
                      ),
                      Container(
                        height: 37,
                        width: 110,
                        child: Center(
                            child: Text(
                          "L",
                          style: TextStyle(
                            color: Color(0xff919296),
                            fontSize: 18,
                          ),
                        )),
                        decoration: BoxDecoration(
                            color: Color(0xff101419),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Price",
                            style: TextStyle(
                                color: Color(0xff919296),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '₹',
                                style: TextStyle(
                                    color: Color(0xffd17842), fontSize: 21),
                              ),
                              Text(
                                " 199",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 21),
                              )
                            ],
                          )
                        ],
                      ),
                      // ignore: deprecated_member_use
                      ButtonTheme(
                        minWidth: 200,
                        height: 50,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () {},
                          color: Color(0xffd17842),
                          child: Text(
                            "Buy Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
