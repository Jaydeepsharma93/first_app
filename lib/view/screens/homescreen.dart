import 'package:flutter/material.dart';

import '../../utils/listOfcategory.dart';
import '../../utils/listdata.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _secondState();
}

class _secondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.dashboard_outlined, size: 30),
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context,'/cart');
                },
                icon: Icon(
                  Icons.local_mall_outlined,
                  color: Colors.black,
                  size: 30,
                )),
          ],
        ),
        body: Container(
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: height * 0.035,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        category.length,
                        (index) =>
                            Category(category[index]['text'], index, height)),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Row(
                      children: [
                        Container(
                          height: height * 0.50,
                          width: width * 0.63,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xffa0afbb), Color(0xffbaccd8)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Category name',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: height * 0.016),
                                    ),
                                    Icon(Icons.favorite_outline,
                                        size: 18, color: Colors.white)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      'RED CHAIR',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: height * 0.032,
                                          fontWeight: FontWeight.w900),
                                    )
                                  ],
                                ),
                              ),
                              Image.asset(
                                'asset/img/ch_r.png',
                                height: height * 0.325,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: height * 0.022,
                                          width: width * 0.046,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                          height: height * 0.022,
                                          width: width * 0.046,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                          height: height * 0.022,
                                          width: width * 0.046,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: height * 0.44,
                          width: width * 0.58,
                          decoration: BoxDecoration(
                            color: Color(0xffa58f90),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Category name',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: height * 0.014),
                                    ),
                                    Icon(Icons.favorite_outline,
                                        size: 18, color: Colors.white)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      'WHITE CHAIR',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: height * 0.028,
                                          fontWeight: FontWeight.w900),
                                    )
                                  ],
                                ),
                              ),
                              Image.asset(
                                'asset/img/ch_w.png',
                                height: height * 0.285,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: height * 0.020,
                                          width: width * 0.044,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Container(
                                          height: height * 0.020,
                                          width: width * 0.044,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Container(
                                          height: height * 0.020,
                                          width: width * 0.044,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                    children: List.generate(
                        data.length,
                        (index) => InkWell(
                          onTap:(){
                            Navigator.pushNamed(context,'/Th',arguments: data[index]);
                          },
                          child: datalist(
                              img: data[index]['img'],
                              name: data[index]['name'],
                              views: data[index]['views'],
                              sold: data[index]['sold'],
                              like: data[index]['like'],
                              price: data[index]['price'],
                              width: width,
                              height: height),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget Category(String text, int index, double height) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: (index == 0)
        ? Text('$text',
            style: TextStyle(
                fontSize: height * 0.02,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationThickness: 1.5))
        : Text(
            '$text',
            style: TextStyle(color: Colors.grey, fontSize: height * 0.02),
          ),
  );
}

Widget datalist(
    {required String img,
    required String name,
      required int price,
    required int sold,
    required int like,
    required double width,
      required double views,
    required double height}) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        Container(
          height: height * 0.18,
          width: width * 0.90,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ]),
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, right: 5, left: 10),
                    child: Container(
                      height: height * 0.15,
                      width: width * 0.38,
                      decoration: BoxDecoration(),
                      margin: EdgeInsets.symmetric(),
                      child: Image.asset(
                        img,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: height * 0.02,
                          height: 3.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: width * 0.06),
                      Icon(Icons.favorite_outline, size: height * 0.025),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Text(
                          'Category Name',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 12.5,
                            height: -1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Icon(Icons.remove_red_eye_sharp,
                            color: Colors.grey.shade500, size: height * 0.0225),
                        SizedBox(width: 2),
                        Text(
                          '$views',
                          style: TextStyle(
                              fontSize: height * 0.0165, color: Colors.grey),
                        ),
                        SizedBox(width: 15),
                        Icon(Icons.favorite,
                            color: Colors.grey.shade500, size: height * 0.0225),
                        SizedBox(width: 2),
                        Text(
                          '$like',
                          style: TextStyle(
                              fontSize: height * 0.0165, color: Colors.grey),
                        ),
                        SizedBox(width: 15),
                        Icon(Icons.shopping_bag,
                            color: Colors.grey.shade500, size: height * 0.0225),
                        SizedBox(width: 2),
                        Text(
                          '$sold',
                          style: TextStyle(
                              fontSize: height * 0.0165, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "'$price' USD",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: height * 0.015,
                          ),
                        ),
                        SizedBox(width: width * 0.10),
                        Container(
                          height: height * 0.024,
                          width: width * 0.05,
                          decoration: BoxDecoration(
                            color: Color(0xff2aa8ae),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                        ),
                        SizedBox(width: width * 0.015),
                        Container(
                          height: height * 0.024,
                          width: width * 0.05,
                          decoration: BoxDecoration(
                            color: Color(0xff804b82),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                        ),
                        SizedBox(width: width * 0.015),
                        Container(
                          height: height * 0.024,
                          width: width * 0.05,
                          decoration: BoxDecoration(
                            color: Color(0xffe1eb34),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
