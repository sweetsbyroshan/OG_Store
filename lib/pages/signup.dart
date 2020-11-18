import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:og_store/widgets/og_button.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  icon: Icon(Icons.keyboard_backspace),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Sign Up',
                    style: GoogleFonts.alegreya().copyWith(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
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
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: GoogleFonts.alegreya(
                                color: Color(0xFFA6A6A6), fontSize: 14),
                            hintStyle: GoogleFonts.alegreya(
                                color: Color(0xFFA6A6A6), fontSize: 14)),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Theme.of(context).primaryColorDark,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                            labelText: 'Password',
                            labelStyle: GoogleFonts.alegreya(
                                color: Color(0xFFA6A6A6), fontSize: 14),
                            hintStyle: GoogleFonts.alegreya(
                                color: Color(0xFFA6A6A6), fontSize: 14)),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: OGButton(
                              isBottomNav: false,
                              text: 'Sign Up',
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, 'login');
                              },
                            ),
                          ),
                          SizedBox(
                            height: 28,
                          ),
                        ],
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
