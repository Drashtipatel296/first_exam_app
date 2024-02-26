import 'dart:js' show context;

import 'package:first_exam_app/product.dart';
import 'package:first_exam_app/utils/productlist.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/img/sc.png'),
          ],
        ),
        title: Row(
          children: [
            SizedBox(width: 550),
            Text(
              'New arrivals',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 30),
            Text(
              'Men',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 30),
            Text(
              'Women',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 30),
            Text(
              'Kids',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 30),
          ],
        ),
        actions: [
          Icon(Icons.shopping_cart),
          SizedBox(width: 30),
          Icon(Icons.favorite_border_rounded),
          SizedBox(width: 30),
          Icon(Icons.person_outline_sharp),
          SizedBox(width: 30),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 750,
                            width: 280,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Brand',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 7),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey, width: 1),
                                            borderRadius:
                                                BorderRadius.circular(3),
                                          ),
                                        ),
                                        Text(
                                          '  Nike',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 7),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey, width: 1),
                                            borderRadius:
                                                BorderRadius.circular(3),
                                          ),
                                        ),
                                        Text(
                                          '  Jordan',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 7),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey, width: 1),
                                            borderRadius:
                                                BorderRadius.circular(3),
                                          ),
                                        ),
                                        Text(
                                          '  Adidas',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 7),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey, width: 1),
                                            borderRadius:
                                                BorderRadius.circular(3),
                                          ),
                                        ),
                                        Text(
                                          '  Fila',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 7),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey, width: 1),
                                            borderRadius:
                                                BorderRadius.circular(3),
                                          ),
                                        ),
                                        Text(
                                          '  Gucci',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 7),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey, width: 1),
                                            borderRadius:
                                                BorderRadius.circular(3),
                                          ),
                                        ),
                                        Text(
                                          '  Balenciaga',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Divider(
                                    thickness: 0.5,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    'Price range',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  RangeSlider(
                                    min: 10000,
                                    max: 500000,
                                    divisions: 98,
                                    activeColor: Colors.black,
                                    values: RangeValues(x, y),
                                    onChanged: (value) {
                                      x = value.start;
                                      y = value.end;
                                      setState(() {});
                                    },
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Text('${x.toStringAsFixed(0)} RWF'),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Text('${y.toStringAsFixed(0)} RWF'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Divider(
                                    thickness: 0.5,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 15),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Size',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 40,
                                        width: 40,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(8),
                                            border:
                                                Border.all(color: Colors.grey),
                                            color: Colors.white),
                                        child: Text('32'),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 40,
                                        width: 40,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(8),
                                            border:
                                                Border.all(color: Colors.grey),
                                            color: Colors.white),
                                        child: Text('33'),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 40,
                                        width: 40,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(8),
                                            border:
                                                Border.all(color: Colors.grey),
                                            color: Colors.white),
                                        child: Text('34'),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 40,
                                        width: 40,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(8),
                                            border:
                                                Border.all(color: Colors.grey),
                                            color: Colors.white),
                                        child: Text('35'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 40,
                                        width: 40,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(8),
                                            border:
                                                Border.all(color: Colors.grey),
                                            color: Colors.white),
                                        child: Text('36'),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 40,
                                        width: 40,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(8),
                                            border:
                                                Border.all(color: Colors.grey),
                                            color: Colors.white),
                                        child: Text('37'),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 40,
                                        width: 40,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(8),
                                            border:
                                                Border.all(color: Colors.grey),
                                            color: Colors.white),
                                        child: Text('38'),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 40,
                                        width: 40,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(8),
                                            border:
                                                Border.all(color: Colors.grey),
                                            color: Colors.white),
                                        child: Text('39'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 40,
                                        width: 40,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(8),
                                            border:
                                                Border.all(color: Colors.grey),
                                            color: Colors.white),
                                        child: Text('40'),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 40,
                                        width: 40,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(8),
                                            border:
                                                Border.all(color: Colors.grey),
                                            color: Colors.white),
                                        child: Text('41'),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 40,
                                        width: 40,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(8),
                                            border:
                                                Border.all(color: Colors.grey),
                                            color: Colors.white),
                                        child: Text('42'),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 40,
                                        width: 40,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(8),
                                            border:
                                                Border.all(color: Colors.grey),
                                            color: Colors.white),
                                        child: Text('43'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 40,
                                        width: 40,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(8),
                                            border:
                                                Border.all(color: Colors.grey),
                                            color: Colors.white),
                                        child: Text('44'),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 40,
                                        width: 40,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(8),
                                            border:
                                                Border.all(color: Colors.grey),
                                            color: Colors.white),
                                        child: Text('45'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Row(
                                  children: [
                                    Text(
                                      'The new arrivals',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: List.generate(
                              products.length,
                              (index) => (products[index]['price'] >= x &&
                                      products[index]['price'] <= y)
                                  ? product(index, context)
                                  : Container(),
                            ),
                          ),
                          Row(
                            children: List.generate(
                              products2.length,
                              (index) => (products[index]
                                              ['price'] >=
                                          x &&
                                      products[index]['price'] <= y)
                                  ? product2(index, context)
                                  : Container(),
                            ),
                          ),
                          Row(
                            children: List.generate(
                              products3.length,
                              (index) =>
                                  (products[index]['price'] >= x &&
                                          products[index]['price'] <= y)
                                      ? product3(index, context)
                                      : Container(),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Divider(
                            thickness: 2,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

double x = 100000, y = 250000;

Widget product(int index, BuildContext context) {
  return GestureDetector(
    onTap: () {
      product_index = index;
      Navigator.of(context).pushNamed('/product',arguments: products[index]);
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 260,
        width: 340,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 250,
              color: Color(0xffF5F5F5),
              child: Image.asset(products[index]['img']),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                products[index]['name'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            Text(
              '${products[index]['price']}RWF',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 10, color: Colors.grey),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget product2(int index, BuildContext context) {
  return GestureDetector(
    onTap: () {
      product_index = index;
      Navigator.of(context).pushNamed('/product',arguments: products2[index]);
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 260,
        width: 340,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 250,
              color: Color(0xffF5F5F5),
              child: Image.asset(products2[index]['img']),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                products2[index]['name'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            Text(
              '${products2[index]['price']}RWF',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 10, color: Colors.grey),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget product3(int index, BuildContext context) {
  return GestureDetector(
    onTap: () {
      product_index = index;
      Navigator.of(context).pushNamed('/product',arguments: products3[index]);
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 260,
        width: 340,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 250,
              color: Color(0xffF5F5F5),
              child: Image.asset(products3[index]['img']),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                products3[index]['name'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            Text(
              '${products3[index]['price']}RWF',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 10, color: Colors.grey),
            ),
          ],
        ),
      ),
    ),
  );
}
