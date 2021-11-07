import 'package:flutter/material.dart';
import 'package:flutter_localizations_example/widgets/product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "NESPRESSO",
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 0.85,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Coffee machines in special \nprice for you!",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.3,
              ),
            ),
            SizedBox(height: 12.0),
            Text(
              "Choose your favorite products and show your code for discount at the store.",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ProductTile(
                    image: "images/image_one.jpg",
                    name: "Essenza Mini \nNespresso",
                    price: 500,
                    oldPrice: 1000,
                  ),
                  ProductTile(
                    image: "images/image_two.jpg",
                    name: "Citi Milk \nNespresso",
                    price: 450,
                    oldPrice: 650,
                  ),
                  ProductTile(
                    image: "images/image_three.jpg",
                    name: "Lattissima One \nMocca",
                    price: 1000,
                    oldPrice: 1500,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 45.0,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "DISCOVER MORE MACHINES",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[300],
                  shape: StadiumBorder(),
                  elevation: 2.0,
                ),
              ),
            ),
            SizedBox(height: 12.0),
            SizedBox(
              height: 45.0,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "SHOW YOUR CODE",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black87,
                  shape: StadiumBorder(),
                  elevation: 2.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
