import 'package:first_app/view/screens/cart.dart';
import 'package:flutter/material.dart';

import '../../utils/cartlist.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as Map;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffaebecb),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: height * 0.025,
              )),
          title: Text(
            data['name'],
            style: TextStyle(
                fontSize: height * 0.018,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite_outline,
                color: Colors.white,
              ),
            )
          ],
          titleSpacing: -12,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: height * 0.35,
                  width: width,
                  decoration: BoxDecoration(
                    color: Color(0xffaebecb),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [],
                    ),
                  ),
                ),
                Container(
                  height: height * 0.52,
                  width: width,
                  child: Image.asset(
                    data['img'],
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                data['name'],
                style: TextStyle(
                    fontSize: height * 0.03, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category Name',
                    style: TextStyle(
                      fontSize: height * 0.017,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: height * 0.04,
                    width: width * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text("${data['price']} USD"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis",
                style:
                    TextStyle(fontSize: height * 0.02, color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose Color',
                    style: TextStyle(
                        fontSize: height * 0.018, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Select Qty',
                    style: TextStyle(
                        fontSize: height * 0.018, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width:0)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: height * 0.028,
                        width: width * 0.058,
                        decoration: BoxDecoration(
                          color: Color(0xff2aa8ae),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      SizedBox(width: width * 0.015),
                      Container(
                        height: height * 0.028,
                        width: width * 0.058,
                        decoration: BoxDecoration(
                          color: Color(0xff804b82),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      SizedBox(width: width * 0.015),
                      Container(
                        height: height * 0.028,
                        width: width * 0.058,
                        decoration: BoxDecoration(
                          color: Color(0xffe1eb34),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: height * 0.032,
                        width: width * 0.085,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: IconButton(
                            onPressed: () {
                              if(data['quantity'] > 0)
                                {
                                setState(() {
                                data['quantity']--;
                                });
                                  }
                                },
                            icon: Icon(Icons.remove_shopping_cart_outlined,
                                size: height * 0.022)),
                      ),
                      SizedBox(width: width * 0.015),
                      Container(
                        alignment: Alignment.center,
                        height: height * 0.032,
                        width: width * 0.12,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Text("${data['quantity']}"),
                      ),
                      SizedBox(width: width * 0.015),
                      Container(
                        alignment: Alignment.center,
                        height: height * 0.032,
                        width: width * 0.085,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                data['quantity']++;
                              });
                            },
                            icon: Icon(Icons.add_shopping_cart,
                                size: height * 0.022)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                cart.add(data);
                setState(() {
                  for(int i=0;i<cart.length;i++)
                  {
                    count+=(cart[i]['quantity']*cart[i]['price']);
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                child: Container(
                  alignment: Alignment.center,
                  height: height * 0.06,
                  width: width * 0.65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Text('Add To Cart',
                      style: TextStyle(fontSize: height * 0.02)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
