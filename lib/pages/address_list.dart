import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:og_store/widgets/address_item.dart';
import 'package:og_store/widgets/og_button.dart';

class AddressListPage extends StatelessWidget {
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
                child: Text('Address',
                    style: GoogleFonts.alegreya().copyWith(
                      fontSize: 22,
                    )),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: 1,
                    itemBuilder: (context, index) => AddressItem(
                      isSelected: false,
                      address:
                          'A 204, Antop Hill, Hill Road, Mumbai 400705, Maharashtra',
                      name: 'Home',
                    ),
                  )),
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: DottedBorder(
              color: Colors.purple,
              radius: Radius.circular(8),
              strokeWidth: 1,
              dashPattern: [5],
              strokeCap: StrokeCap.round,
              child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'addressC');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    child: Text('Add Address'),
                  )),
            ),
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: OGButton(
              isBottomNav: false,
              text: 'Continue to Payment',
              onPressed: () {
                Navigator.pushNamed(context, 'checkout');
              },
            ),
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}
