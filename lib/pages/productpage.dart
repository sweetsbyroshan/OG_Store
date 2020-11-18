import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:og_store/data/data.dart';
import 'package:og_store/widgets/og_button.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
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
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.search),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                height: MediaQuery.of(context).size.height * .3,
                child: Carousel(
                  boxFit: BoxFit.cover,
                  autoplay: true,
                  animationCurve: Curves.fastOutSlowIn,
                  animationDuration: Duration(milliseconds: 1000),
                  dotBgColor: Colors.transparent,
                  dotPosition: DotPosition.bottomLeft,
                  showIndicator: true,
                  images: [
                    Image.asset(
                      'assets/product.png',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/product.png',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/product.png',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                child: Text('Survive Unisex Hoodie(Black)',
                    style: GoogleFonts.alegreya().copyWith(
                      fontSize: 22,
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('₹ 1800 ',
                        style: GoogleFonts.alegreya()
                            .copyWith(fontSize: 22, color: Colors.purple)),
                    SizedBox(
                      width: 12,
                    ),
                    Text(' ₹ 2000',
                        style: GoogleFonts.alegreya().copyWith(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 18,
                            color: Colors.grey)),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Divider(),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: OGButton(
                        isBottomNav: false,
                        onPressed: () {},
                        text: '4.5',
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Flexible(
                      child: Text('VERY GOOD',
                          style: GoogleFonts.alegreya()
                              .copyWith(fontSize: 18, color: Colors.black)),
                      fit: FlexFit.tight,
                      flex: 3,
                    ),
                    Flexible(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text('49 reviews',
                            style: GoogleFonts.alegreyaSans()
                                .copyWith(fontSize: 18, color: Colors.purple)),
                      ),
                      fit: FlexFit.tight,
                      flex: 5,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Divider(),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('About',
                    style: GoogleFonts.alegreya().copyWith(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                    'Fashion to me has become very disposable; I wanted to get back to craft, to clothes that could last. I adore the challenge of creating truly modern clothes, where a woman\'s personality and sense of self are revealed. I want people to see the dress, but focus on the woman. Success isn\'t about the end result, it\'s about what you learn along the way. Success isn\'t about the end result, it\'s about what you learn along the way. I love to design things that people can actually buy. I\'m staggered by what a boot costs today.',
                    style: GoogleFonts.alegreyaSans()
                        .copyWith(fontSize: 16, color: Colors.black)),
              ),
              SizedBox(
                height: 12,
              ),
              Divider(),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('Select Size',
                    style: GoogleFonts.alegreya()
                        .copyWith(fontSize: 18, color: Colors.black)),
              ),
              SizedBox(
                height: 12,
              ),
              Divider(),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    primary: false,
                    children: Data()
                        .sizes
                        .map((e) => Container(
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              height: 50,
                              width: 50,
                              child: OGButton(
                                isBottomNav: false,
                                onPressed: () {},
                                text: e,
                              ),
                            ))
                        .toList()),
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ButtonTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                minWidth: 217.0,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                height: 24.0,
                padding: EdgeInsets.all(0),
                child: Container(
                  decoration: BoxDecoration(),
                  child: FlatButton(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Text('ADD TO CART',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ),
                    // color: Color(0xFF698F3C),
                    onPressed: () {},
                  ),
                ),
              )),
          Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: OGButton(
                text: 'BUY NOW',
                onPressed: () {},
              )),
        ],
      ),
    );
  }
}
