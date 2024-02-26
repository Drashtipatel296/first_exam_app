import 'package:first_exam_app/utils/cartlist.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}
int product_index=0;

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {

    var productData = ModalRoute.of(context)!.settings.arguments as Map;

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
          InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/cart');
              },
              child: Icon(Icons.shopping_cart)),
          SizedBox(width: 30),
          Icon(Icons.favorite_border_rounded),
          SizedBox(width: 30),
          Icon(Icons.person_outline_sharp),
          SizedBox(width: 30),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 630,
                          width: 1000,
                          decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                          ),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 45,vertical: 50),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              productData['name'],
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(width: 600),
                                            Icon(Icons.favorite_border),
                                          ],
                                        ),
                                        Text(
                                          '${productData['price']}',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(productData['img']),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: Text(
                            'Description',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Text(
                          'The Jordan Delta 2 offers a fresh, fearless take on\n the features you want: durability, comfort and an\n attitude thats Jordan to the core. We updated\n design lines and swapped out some components.\n The 2 still has that clashing combination of\n supportive and space age-like materials, with lots\n of different textures and heavy stitching to create\n a look thats both adventurous and iconic.'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Container(
                        height: 1,
                        width: 320,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Text('Select Size',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 35,
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
                            height: 35,
                            width: 35,
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
                            height: 35,
                            width: 35,
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
                            height: 35,
                            width: 35,
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
                            height: 35,
                            width: 35,
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
                            height: 35,
                            width: 35,
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
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 35,
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
                            height: 35,
                            width: 35,
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
                            height: 35,
                            width: 35,
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
                            height: 35,
                            width: 35,
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
                            height: 35,
                            width: 35,
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
                            height: 35,
                            width: 35,
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
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 35,
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
                            height: 35,
                            width: 35,
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
                        ],
                      ),
                    ),
                    SizedBox(height: 80,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {

                              }, icon: Icon(Icons.remove)),
                          Container(
                            height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                              border:
                                   Border.all(color: Colors.grey),
                                       color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                                    alignment: Alignment.center,
                                    child: Text('1'),
                              ),
                          IconButton(
                              onPressed: () {

                              }, icon: Icon(Icons.add)),
                          InkWell(
                            onTap: () {
                              setState(() {
                                cart.add(productData);
                              });
                            },
                            child: Container(
                              height: 38,
                              width: 110,
                              color: Colors.red,
                              alignment: Alignment.center,
                              child: Text('Add to cart',style: TextStyle(color: Colors.white,fontSize: 14),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
