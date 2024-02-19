import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Image.asset('asset/img/sc.png'),
              ),
              SizedBox(width: 350),
              Text('New arrivals'),
              SizedBox(width: 20),
              Text('Men'),
              SizedBox(width: 20),
              Text('Women'),
              SizedBox(width: 20),
              Text('Kids'),
              SizedBox(width: 350),
              Icon(Icons.shopping_cart),
              SizedBox(width: 30),
              Icon(Icons.favorite),
              SizedBox(width: 30),
              Icon(Icons.person),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 20),
            child: Row(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 605,
                          width: 700,
                          decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                          ),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 45,vertical: 100),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text('Jordan Delata 2',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                            SizedBox(width: 350),
                                            Icon(Icons.favorite_border),
                                          ],
                                        ),
                                        Text('78, 000RWF',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset('asset/img/shoes6.png'),
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
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text('Description',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Text('The Jordan Delta 2 offers a fresh, fearless take on the features you want:\n durability, comfort and an attitude thats Jordan to the core. We updated\n design lines and swapped out some components. The 2 still has that \nclashing combination of supportive and space age-like materials, with lots of \ndifferent textures and heavy stitching to create a look thats both adventurous and iconic.'),

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
