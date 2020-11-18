import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:og_store/widgets/og_button.dart';

class SliderOffer extends StatelessWidget {
  String title, description, image;
  SliderOffer({this.title, this.description, this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      color: Colors.blueGrey.shade300,
      child: Stack(
        children: [
          Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width * .7,
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: Container(
                  width: MediaQuery.of(context).size.width * .7,
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          Positioned(
            bottom: 40,
            left: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.alegreya()
                        .copyWith(fontSize: 19, color: Colors.purple),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    description,
                    style: GoogleFonts.alegreyaSans()
                        .copyWith(fontSize: 24, color: Colors.white),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 100,
                    child: OGButton(
                      isBottomNav: false,
                      onPressed: () {},
                      text: 'SHOP NOW',
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
