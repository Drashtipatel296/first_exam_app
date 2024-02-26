import 'package:first_exam_app/utils/cartlist.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  int sum() {
    int total = 0;

    for (var item in cart) {
      int price = item['price'];
      total += price * count;
    }
    return total;
  }

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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 700,
                  width: 1000,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your shopping cart',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: List.generate(cart.length, (index) =>
                                  Column(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 820,
                                        color: Color(0xffF5F5F5),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(12),
                                              height: 80,
                                              width: 80,
                                              color: Colors.white,
                                              child:
                                              Image.asset(cart[index]['img']),
                                            ),
                                            SizedBox(width: 10),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    cart[index]['name'],
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '${cart[index]['price']}',
                                                    style: TextStyle(fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 200),
                                            IconButton(
                                                onPressed: () {
                                                  if(count > 1)
                                                    {
                                                      setState(() {
                                                        count--;
                                                      });
                                                    }
                                                },
                                                icon: Icon(Icons.remove)),
                                            Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                border:
                                                Border.all(color: Colors.grey),
                                                color: Colors.white,
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              alignment: Alignment.center,
                                              child: Text('$count'),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  if(count < 1)
                                                  {
                                                    setState(() {
                                                      count++;
                                                    });
                                                  }
                                                },
                                                icon: Icon(Icons.add)),
                                            SizedBox(width: 200),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    cart.removeAt(index);
                                                  });
                                                }, icon: Icon(Icons.delete)),
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order summary',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              Text(
                                'Sub total',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 200,
                              ),
                              Text(
                                '${sum()} RWF',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                'Delivery fee',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 200,
                              ),
                              Text(
                                '0RWF',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 1,
                            width: 380,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 260,
                              ),
                              Text(
                                '${sum()} RWF',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                      SizedBox(height: 70),
                      Container(
                        alignment: Alignment.center,
                        height: 38,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.red,
        
                        ),
                        child: Text('Proceed to checkout',style: TextStyle(
                            color: Colors.white
                        ),
                        ),
                      ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

int count = 1;
