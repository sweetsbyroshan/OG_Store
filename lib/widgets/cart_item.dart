import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItem extends StatefulWidget {
  String image, name, price;
  CartItem({this.image, this.name, this.price});
  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.image,
                width: MediaQuery.of(context).size.width * .3,
              ),
              SizedBox(
                width: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Text(widget.name,
                      style: GoogleFonts.alegreya().copyWith(
                          color: Colors.purple.shade400,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                  Text(widget.price,
                      style: GoogleFonts.alegreya().copyWith(
                        fontSize: 18,
                      )),
                  Container(
                    width: 117,
                    height: 25,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purple.shade100,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 1,
                          child: ButtonTheme(
                            height: 25,
                            child: IconButton(
                              icon: Icon(
                                Icons.remove,
                                color: Color(
                                  0xFFC42021,
                                ),
                                size: 10,
                              ),
                              onPressed: () {
                                setState(() {});
                              },
                            ),
                          ),
                        ),
                        Flexible(
                            flex: 2,
                            child: Text(
                              '${2}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 12),
                            )),
                        Flexible(
                          flex: 1,
                          child: ButtonTheme(
                            height: 25,
                            child: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.purple,
                                size: 10,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          IconButton(icon: Icon(Icons.close), onPressed: () {})
        ],
      ),
    );
  }
}
