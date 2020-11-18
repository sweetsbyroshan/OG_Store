import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:og_store/widgets/og_button.dart';

class AddressCreatePage extends StatelessWidget {
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
                child: Text('Create Address',
                    style: GoogleFonts.alegreya().copyWith(
                      fontSize: 22,
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Name',
                            labelStyle: GoogleFonts.alegreya(
                                color: Color(0xFFA6A6A6), fontSize: 14),
                            hintStyle: GoogleFonts.alegreya(
                                color: Color(0xFFA6A6A6), fontSize: 14)),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Building name /House no.',
                            labelStyle: GoogleFonts.alegreya(
                                color: Color(0xFFA6A6A6), fontSize: 14),
                            hintStyle: GoogleFonts.alegreya(
                                color: Color(0xFFA6A6A6), fontSize: 14)),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Address line 1',
                            labelStyle: GoogleFonts.alegreya(
                                color: Color(0xFFA6A6A6), fontSize: 14),
                            hintStyle: GoogleFonts.alegreya(
                                color: Color(0xFFA6A6A6), fontSize: 14)),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'City',
                            labelStyle: GoogleFonts.alegreya(
                                color: Color(0xFFA6A6A6), fontSize: 14),
                            hintStyle: GoogleFonts.alegreya(
                                color: Color(0xFFA6A6A6), fontSize: 14)),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'ZIP Code',
                            labelStyle: GoogleFonts.alegreya(
                                color: Color(0xFFA6A6A6), fontSize: 14),
                            hintStyle: GoogleFonts.alegreya(
                                color: Color(0xFFA6A6A6), fontSize: 14)),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'Phone Number',
                            labelStyle: GoogleFonts.alegreya(
                                color: Color(0xFFA6A6A6), fontSize: 14),
                            hintStyle: GoogleFonts.alegreya(
                                color: Color(0xFFA6A6A6), fontSize: 14)),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: Container(
        color: Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: OGButton(
          isBottomNav: false,
          text: 'Add Address',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
