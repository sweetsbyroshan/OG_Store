import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
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
                    IconButton(
                      icon: Icon(Icons.keyboard_backspace),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Profile',
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
    );
  }
}
