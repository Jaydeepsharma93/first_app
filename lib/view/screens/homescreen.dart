import 'package:flutter/material.dart';

import '../../utils/listOfcategory.dart';

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
                onPressed: () {},
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
                                        color: Colors.white, fontSize: height*0.016),
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
                                        fontSize: height*0.032,
                                        fontWeight: FontWeight.w900),
                                  )
                                ],
                              ),
                            ),
                            Image.asset(
                              'asset/img/ch_r.png',
                              height: height * 0.33,
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
                        width:width*0.58,
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
                                        color: Colors.white, fontSize: height*0.014),
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
                                        fontSize: height*0.028,
                                        fontWeight: FontWeight.w900),
                                  )
                                ],
                              ),
                            ),
                            Image.asset(
                              'asset/img/ch_w.png',
                              height: height * 0.28,
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
            ],
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
