import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Product extends StatelessWidget {
  String name, price, image;
  Product({this.name, this.price, this.image});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.pushNamed(context, 'product');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: Image.asset(
              image,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Text(name,
              style: GoogleFonts.alegreya().copyWith(
                fontSize: 22,
              )),
          Text(price,
              style: GoogleFonts.alegreya().copyWith(
                fontSize: 14,
              )),
        ],
      ),
    );
  }
}
