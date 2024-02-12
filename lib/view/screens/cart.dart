import 'package:flutter/material.dart';

import '../../utils/cartlist.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Cart',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(
              cart.length,
              (index) => Container(
                margin: EdgeInsets.all(10),
                height: height * 0.18,
                width: width * 0.98,
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
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, right: 5, left: 10),
                    child: Container(
                      height: height * 0.15,
                      width: width * 0.38,
                      decoration: BoxDecoration(),
                      margin: EdgeInsets.symmetric(),
                      child: Image.asset(
                        cart[index]['img'],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            cart[index]['name'],
                            style: TextStyle(
                              fontSize: height * 0.022,
                              height: 3.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: height * 0.05,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                cart.removeAt(index);
                              });
                            },
                            icon: Icon(Icons.delete, size: height * 0.022),
                          )
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
                                height: -2,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
