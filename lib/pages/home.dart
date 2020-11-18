import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:og_store/data/data.dart';
import 'package:og_store/widgets/product.dart';
import 'package:og_store/widgets/slider_offer.dart';

class HomePage extends StatelessWidget {
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
                          icon: FaIcon(FontAwesomeIcons.stream),
                          onPressed: () {
                            Navigator.pushNamed(context, 'menu');
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.shoppingCart),
                          onPressed: () {
                            Navigator.pushNamed(context, 'cart');
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
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search Your Products'),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Categories',
                    style: GoogleFonts.alegreya().copyWith(
                      fontSize: 22,
                    )),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .1,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      primary: false,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * .4,
                            child: Image.asset(
                              'assets/women.png',
                              fit: BoxFit.fitWidth,
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width * .4,
                            child: Image.asset(
                              'assets/men.png',
                              fit: BoxFit.fitWidth,
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width * .4,
                            child: Image.asset(
                              'assets/kids.png',
                              fit: BoxFit.fitWidth,
                            )),
                      ],
                    ),
                  )),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                height: MediaQuery.of(context).size.height * .3,
                child: Carousel(
                  boxFit: BoxFit.cover,
                  dotColor: Colors.purple,
                  dotSize: 6,
                  autoplay: false,
                  animationCurve: Curves.fastOutSlowIn,
                  animationDuration: Duration(milliseconds: 1000),
                  showIndicator: true,
                  dotBgColor: Colors.transparent,
                  dotPosition: DotPosition.bottomLeft,
                  images: Data()
                      .sliderOffers
                      .map((e) => SliderOffer(
                            title: e['title'],
                            description: e['description'],
                            image: e['image'],
                          ))
                      .toList(),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Featured',
                        style: GoogleFonts.alegreya().copyWith(
                          fontSize: 22,
                        )),
                    FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'featured');
                      },
                      child: Text('See all',
                          style: GoogleFonts.alegreyaSans().copyWith(
                            fontSize: 12,
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .34,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      primary: false,
                      itemCount: Data().featuredList.length,
                      itemBuilder: (context, index) => Product(
                        image: Data().featuredList[index]['image'],
                        price: Data().featuredList[index]['price'],
                        name: Data().featuredList[index]['name'],
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Best Sell',
                        style: GoogleFonts.alegreya().copyWith(
                          fontSize: 22,
                        )),
                    FlatButton(
                      onPressed: () {},
                      child: Text('See all',
                          style: GoogleFonts.alegreyaSans().copyWith(
                            fontSize: 12,
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .34,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      primary: false,
                      itemCount: Data().bestSellList.length,
                      itemBuilder: (context, index) => Product(
                        image: Data().bestSellList[index]['image'],
                        price: Data().bestSellList[index]['price'],
                        name: Data().bestSellList[index]['name'],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
