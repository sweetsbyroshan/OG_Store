import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:og_store/widgets/og_button.dart';

class FirstScreenPage extends StatefulWidget {
  @override
  _FirstScreenPageState createState() => _FirstScreenPageState();
}

class _FirstScreenPageState extends State<FirstScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 32,
                ),
                Text(
                  'Welcome to OG Store',
                  style: GoogleFonts.alegreya()
                      .copyWith(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Explore Us',
                  style: GoogleFonts.alegreya()
                      .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  height: MediaQuery.of(context).size.height * .4,
                  child: Carousel(
                    boxFit: BoxFit.cover,
                    autoplay: true,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1000),
                    showIndicator: false,
                    images: [
                      NetworkImage(
                          'https://previews.123rf.com/images/vadish/vadish1903/vadish190300052/118732293-banner-mega-sale-in-mockup-smartphone-special-offer-50-with-plane-on-the-background-of-clouds-cut-ou.jpg'),
                      NetworkImage(
                        'https://media.istockphoto.com/vectors/special-offer-social-media-posts-mockup-vector-id1187827659',
                      ),
                      NetworkImage(
                          'https://previews.123rf.com/images/vadish/vadish1903/vadish190300052/118732293-banner-mega-sale-in-mockup-smartphone-special-offer-50-with-plane-on-the-background-of-clouds-cut-ou.jpg'),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OGButton(
                  isBottomNav: false,
                  text: 'Login',
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                CupertinoButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'signup');
                  },
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.alegreya().copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
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
    ));
  }
}
