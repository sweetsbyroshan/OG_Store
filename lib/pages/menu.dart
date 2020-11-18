import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatelessWidget {
  List<String> options = [
    'Profile',
    'My Cart',
    'Favourite',
    'My Orders',
    'Language',
    'Settings'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        mini: true,
        backgroundColor: Colors.white,
        child: Icon(Icons.close, color: Colors.black),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: options
                .map((e) => FlatButton(
                    onPressed: () {},
                    child: FlatButton(
                      child: Text(e,
                          style: GoogleFonts.alegreya().copyWith(
                            fontSize: 22,
                          )),
                      onPressed: () {
                        switch (e) {
                          case 'Profile':
                            Navigator.pushReplacementNamed(context, 'profile');
                            break;
                          case 'My Cart':
                            Navigator.pushReplacementNamed(context, 'cart');
                            break;
                          case 'Favourite':
                            Navigator.pushReplacementNamed(context, 'fav');
                            break;
                          case 'My Orders':
                            Navigator.pushReplacementNamed(context, 'order');
                            break;
                          case 'Language':
                            break;
                          case 'Settings':
                            break;
                        }
                      },
                    )))
                .toList(),
          ),
        ),
      ),
    );
  }
}
