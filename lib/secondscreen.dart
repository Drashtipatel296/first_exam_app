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
      body: SingleChildScrollView(
        child: Column(
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
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
              child: Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 550,
                            width: 250,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Brand'),SizedBox(height: 15,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 7),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey,width: 1),
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                        ),
                                        Text('  Nike',style: TextStyle(fontSize: 10),),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 7),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey,width: 1),
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                        ),
                                        Text('  Jordan',style: TextStyle(fontSize: 10),),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 7),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey,width: 1),
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                        ),
                                        Text('  Adidas',style: TextStyle(fontSize: 10),),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 7),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey,width: 1),
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                        ),
                                        Text('  Fila',style: TextStyle(fontSize: 10),),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 7),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey,width: 1),
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                        ),
                                        Text('  Gucci',style: TextStyle(fontSize: 10),),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 7),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey,width: 1),
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                        ),
                                        Text('  Balenciaga',style: TextStyle(fontSize: 10),),
                                      ],
                                    ),
                                  ),
                                  Divider(thickness: 0.5,color: Colors.black,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              children: [
                                Text('The new arrivals',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Column(
                            children: [
                              Row(
                                children: List.generate(productData.length,
                                        (index) => product(
                                            img: productData[index]['img'],
                                            name: productData[index]['name'],
                                            price: productData[index]['price'],
                                        ),
                                ),
                              ),
                              Row(
                                children: List.generate(productData.length,
                                      (index) => product(
                                    img: productData2[index]['img'],
                                    name: productData2[index]['name'],
                                    price: productData2[index]['price'],
                                  ),
                                ),
                              ),
                              Row(
                                children: List.generate(productData.length,
                                      (index) => product(
                                    img: productData3[index]['img'],
                                    name: productData3[index]['name'],
                                    price: productData3[index]['price'],
                                  ),
                                ),
                              ),
                            ],
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

Widget product({required String img, required String name, required String price})
{
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      height: 260,
      width: 350,
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
            child: Image.asset(img),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          Text('\$ ${price}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.grey),),
        ],
      ),
    ),
  );
}
