import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Image.asset('asset/img/sc.png'),
                ),SizedBox(width: 450),
                Text('New arrivals'),SizedBox(width: 20),
                Text('Men'),SizedBox(width: 20),
                Text('Women'),SizedBox(width: 20),
                Text('Kids'),SizedBox(width: 250),
                Icon(Icons.shopping_cart),SizedBox(width: 30),
                Icon(Icons.favorite),SizedBox(width: 30),
                Icon(Icons.person),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Puma',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                      Text('Running SX',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),SizedBox(height: 20,),
                      Text('The shoe that moved mountains for eternity and still does so with a swift touch of modernism'),SizedBox(height: 20,),
                      Text('62, 000RWF',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),SizedBox(height: 20,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                          onPressed: () {
        
                          }, child: Text('Add to Cart',style: TextStyle(color: Colors.white),),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Image.asset('asset/img/shoes1.png'),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 100),
                  child: Text('All the new arrivals',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
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
                          child: Image.asset('asset/img/shoes2.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text('Adiddas Beluga',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        ),
                        Text('35, 000RWF',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.grey),),
                      ],
                    ),
                  ),
                  Container(
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
                          child: Image.asset('asset/img/shoes4.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text('Nike Air Jordan XT',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        ),
                        Text('35, 000RWF',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.grey),),
                      ],
                    ),
                  ),
                  Container(
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
                          child: Image.asset('asset/img/shoes5.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text('Nike Wobler',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        ),
                        Text('35, 000RWF',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.grey),),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    height: 260,
                    width: 345,
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
                          child: Image.asset('asset/img/shoes3.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text('Nike Zoom',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        ),
                        Text('35, 000RWF',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.grey),),
                      ],
                    ),
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
