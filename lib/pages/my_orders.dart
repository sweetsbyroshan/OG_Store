import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:og_store/data/data.dart';
import 'package:og_store/widgets/cart_item.dart';
import 'package:og_store/widgets/order_item.dart';

class MyOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(Icons.keyboard_backspace),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('My Orders',
                    style: GoogleFonts.alegreya().copyWith(
                      fontSize: 22,
                    )),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: Data().bigList.length,
                    itemBuilder: (context, index) => MyOrderItem(
                      image: Data().bigList[index]['image'],
                      price: Data().bigList[index]['price'],
                      name: Data().bigList[index]['name'],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
