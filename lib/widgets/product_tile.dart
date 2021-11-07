import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.oldPrice,
  }) : super(key: key);
  final String image;
  final String name;
  final int price;
  final int oldPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          SizedBox(width: 8.0),
          Image.asset(
            image,
            height: 120.0,
            width: 120.0,
          ),
          SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    "\$$price",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Text(
                    "\$$oldPrice",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[700],
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 2.0
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
