import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:og_store/data/data.dart';
import 'package:og_store/widgets/cart_item.dart';
import 'package:og_store/widgets/og_button.dart';

class CheckoutPage extends StatelessWidget {
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
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Checkout',
                    style: GoogleFonts.alegreya().copyWith(
                      fontSize: 22,
                    )),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: 3,
                    itemBuilder: (context, index) => CartItem(
                      image: Data().bigList[index]['image'],
                      price: Data().bigList[index]['price'],
                      name: Data().bigList[index]['name'],
                    ),
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
                child: Text('Deliver to',
                    style: GoogleFonts.alegreya().copyWith(
                      fontSize: 18,
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
                child: Text(
                    'A 204, Antop Hill,\nHill Road, Mumbai 4007050,\nMaharashtra',
                    style: GoogleFonts.alegreyaSans()
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
              ),
              Divider(),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subtotal',
                              style: GoogleFonts.alegreya()
                                  .copyWith(fontSize: 18, color: Colors.grey)),
                          Text('₹${1600 + 6000 + 1000}',
                              style: GoogleFonts.alegreya()
                                  .copyWith(fontSize: 18, color: Colors.black)),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Discount',
                              style: GoogleFonts.alegreya()
                                  .copyWith(fontSize: 18, color: Colors.grey)),
                          Text('5%',
                              style: GoogleFonts.alegreya()
                                  .copyWith(fontSize: 18, color: Colors.black)),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Shipping',
                              style: GoogleFonts.alegreya()
                                  .copyWith(fontSize: 18, color: Colors.grey)),
                          Text('₹${500}',
                              style: GoogleFonts.alegreya()
                                  .copyWith(fontSize: 18, color: Colors.black)),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Grant Total',
                              style: GoogleFonts.alegreya()
                                  .copyWith(fontSize: 18, color: Colors.grey)),
                          Text(
                              '₹${(1600 + 6000 + 1000) - ((1600 + 6000 + 1000) * .05) + 500}',
                              style: GoogleFonts.alegreya()
                                  .copyWith(fontSize: 18, color: Colors.black)),
                        ],
                      ),
                      Divider(),
                      SizedBox(
                        height: 8,
                      ),
                    ],
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
          text: 'BUY',
          onPressed: () {
            Navigator.pushNamed(context, 'confirmation');
          },
        ),
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
