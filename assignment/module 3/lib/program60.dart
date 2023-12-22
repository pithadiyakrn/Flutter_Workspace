import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget
{

  @override
  FirstScreenState createState() => FirstScreenState();
}

class FirstScreenState extends State<FirstScreen>
{
  bool isLiked = false;

  final List<String> tags = [
    "Recommend",
    "Popular",
    "Noodles",
    "Pizza",
    "Burger",
    "Coffee"
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(width: 25),

                  Container(
                    width: 45,
                    height: 45,
                    child: Icon(Icons.search, color: Colors.white),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.zero,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Text("  Restaurant", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            child: Row(
              children: [
                Container(
                  height: 30,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey,
                  ),
                  child: Text(
                    "20-30min",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize:15, color: Colors.white),
                  ),
                ),
                SizedBox(width: 20), // Add some horizontal spacing
                Container(
                  height: 30,
                  child: Text(
                    "2.4km",
                    style: TextStyle(fontSize: 15,  color: Colors.grey),
                  ),
                ),
                SizedBox(width: 20), // Add some horizontal spacing
                Container(
                  height: 30,
                  child: Text(
                    "Restaurant",
                    style: TextStyle(fontSize: 15,  color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),

          Container(
            child: Row(
              children: [
                Text(" Orange Sandwiches is delicious", style: TextStyle(fontSize: 15),),

                SizedBox(width: 55),

                IconButton(
                  onPressed: () {
                    toggleLike();
                  },
                  icon: Icon(
                    isLiked ? Icons.star : Icons.star_border,
                    color: isLiked ? Colors.orange : Colors.orange,
                  ),
                ),
                Text("4.7"),
              ],
            ),
          ),

          SizedBox(height: 20,),
          Container(
            color: Colors.white,
            height: 55, // Set the desired height
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tags.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.all(12.5),
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      // color: _color ? Colors.orangeAccent : Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: InkWell(
                      onTap: () {

                      },
                      child: Text(tags[index],
                        style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  );
                }
            ),

          ),
          SizedBox(height: 10),
          buildProductList(),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.shopping_bag_outlined, color: Colors.black),
        onPressed: () {},
      ),
    );
  }
  void toggleLike ()
  {
    setState(() {
      isLiked = !isLiked;
    });
  }



  Widget buildProductList() {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        buildProductContainer(
          "Soba Soup",
          "No. 1 in Sales",
          "\$ 12",
          "https://begrimed-executions.000webhostapp.com/images/S1.jpeg",
        ),
        buildProductContainer(
          "Sai Ua Samun Phrai",
          "No. 2 in Sales",
          "\$ 12",
          "https://begrimed-executions.000webhostapp.com/images/S2.jpeg",
        ),
        buildProductContainer(
          "Ratatouille Pasta",
          "No. 3 in Sales",
          "\$ 12",
          "https://begrimed-executions.000webhostapp.com/images/S3.jpeg",
        ),
      ],
    );
  }

  Widget buildProductContainer(
      String productName,
      String subtitle,
      String price,
      String imageUrl,
      ) {
    return GestureDetector(
      onTap: () {
        // Add your logic for handling the tap event here.

        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(imageUrl),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                // Add your logic for adding the product to cart or handling taps here.
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              icon: Icon(
                Icons.navigate_next_sharp,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }



}

class SecondScreen extends StatefulWidget{
  @override
  SeconedScreenState createState() => SeconedScreenState();
}

class SeconedScreenState extends State<SecondScreen>
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.orange,

      body: Center(
        child: Stack(
          children: [

            Container(
              margin: EdgeInsets.only(top: 40),

              child: IconButton(
                  iconSize: 30,
                  onPressed: ()
                  {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FirstScreen()));
                  },
                  icon: Icon(Icons.arrow_back)),
            ),

            Container(
              margin: EdgeInsets.only(top: 40,left: 300),

              child: IconButton(
                  iconSize: 30,
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart_rounded)),
            ),
            Container(

              margin: EdgeInsets.only(top: 170),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                color: Colors.white,
              ),
            ),
            Positioned(

              top: 110,
              left: 105,

              child: ClipOval(
                child: Image.network("https://paternalistic-hiera.000webhostapp.com/Images/OIP.jpeg",
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,),

              ),
            ),
            Positioned(
              child:Text("Sei Ua Samun phrai",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              top: 290,
              left: 85,),

            Positioned(
              child: Icon(Icons.access_time,color: Colors.blue,),
              top: 330,
              left: 45,),

            Positioned(
              child: Text("50min"),
              top: 335,
              left: 75,
            ),

            Positioned(
              child: Icon(Icons.star,color: Colors.orange,),
              top: 330,
              left: 145,
            ),

            Positioned(
              child: Text("4.8"),
              top: 335,
              left: 175,
            ),

            Positioned(
              child: Icon(Icons.local_fire_department,color: Colors.orange,),
              top: 330,
              left: 235,
            ),

            Positioned(
              child: Text("325 Kcal"),
              top: 335,
              left: 265,
            ),

            Positioned(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("  \$ 12", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                height: 50,
                width: 160,
                margin: EdgeInsets.only(top: 385, left: 100),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.grey,
                ),

              ),),


            Positioned(
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(top: 385, left: 160),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomLeft: Radius.circular(40)),
                  color: Colors.orange,
                ),

                child: Column(
                  children: <Widget>[
                    Align(alignment: Alignment.centerLeft,
                      child: IconButton(onPressed: ()
                      {

                      }, icon: Icon(Icons.add),),),
                  ],
                ),

              ),),
            Positioned(
              child: Container(
                height: 50,
                width: 80,
                margin: EdgeInsets.only(top: 385, left: 210),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomRight: Radius.circular(40)),
                  color: Colors.orange,
                ),

                child: Column(
                  children: <Widget>[
                    Align(alignment: Alignment.topRight,
                      child: IconButton(onPressed: ()
                      {

                      }, icon: Icon(Icons.minimize),),),
                  ],
                ),

              ),),

            Positioned(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                margin: EdgeInsets.only(top: 385, left: 195),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white,
                ),
                child: Text("1", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

              ),),

            Positioned(
              child: Text("Ingredienta", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              top: 460,
              left: 20,
            ),

            Positioned(
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(top: 510, left: 30),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(1.1, 1.1),
                        blurRadius: 20.0,
                        color: Colors.grey
                    ),
                  ],
                  color: Colors.white,
                ),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage("https://begrimed-executions.000webhostapp.com/images/noodles.jpg"),
                ),
              ),
            ),

            Positioned(
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(top: 510, left: 120),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(1.1, 1.1),
                        blurRadius: 20.0,
                        color: Colors.grey
                    ),
                  ],
                  color: Colors.white,
                ),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage("https://begrimed-executions.000webhostapp.com/images/shrimpa.jpeg"),
                ),
              ),
            ),

            Positioned(
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(top: 510, left: 210),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(1.1, 1.1),
                        blurRadius: 20.0,
                        color: Colors.grey
                    ),
                  ],
                  color: Colors.white,
                ),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage("https://begrimed-executions.000webhostapp.com/images/egg.jpg"),
                ),
              ),
            ),

            Positioned(
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(top: 510, left: 300),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(1.1, 1.1),
                        blurRadius: 20.0,
                        color: Colors.grey
                    ),
                  ],
                  color: Colors.white,
                ),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage("https://begrimed-executions.000webhostapp.com/images/scallion.jpg"),
                ),

              ),
            ),

            Positioned(
              child: Text("Noodle", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              top: 570,
              left: 30,),

            Positioned(
              child: Text("Shrimp", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              top: 570,
              left: 120,
            ),

            Positioned(
              child: Text("Egg", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              top: 570,
              left: 220,
            ),

            Positioned(
              child: Text("Scallion", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              top: 570,
              left: 300,
            ),

            Positioned(
              child: Text("About", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              top: 615,
              left: 30,
            ),

            Positioned(
              top: 640,
              left: 35,
              child: Container(
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.all(2),
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text(" A vibrant Thai sausage made with ground chicken, ""plus its spicy chile dip, ""from Chef Parnass Savang of Atlanta's Talat Market.",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),softWrap: true,),

                  ],
                ),
              ),
            ),

            Positioned(
              top: 710,
              left: 290,
              child: FloatingActionButton(
                backgroundColor: Colors.orange,
                onPressed: ()
                {

                },child: Icon(Icons.shopping_bag_outlined, color: Colors.black,),
              ),
            ),
          ],
        ),
      ),

    );

  }

}