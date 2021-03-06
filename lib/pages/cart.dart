import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:og_store/data/data.dart';
import 'package:og_store/widgets/cart_item.dart';
import 'package:og_store/widgets/og_button.dart';

class CartPage extends StatelessWidget {
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.keyboard_backspace),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.shoppingCart,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.filter),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Cart',
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
                    itemBuilder: (context, index) => CartItem(
                      image: Data().bigList[index]['image'],
                      price: Data().bigList[index]['price'],
                      name: Data().bigList[index]['name'],
                    ),
                  )),
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: Container(
        color: Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: OGButton(
          isBottomNav: false,
          text: 'Continue',
          onPressed: () {
            Navigator.pushNamed(context, 'addressL');
          },
        ),
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
