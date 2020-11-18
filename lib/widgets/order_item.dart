import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:og_store/widgets/og_button.dart';

class MyOrderItem extends StatefulWidget {
  String image, name, price;
  MyOrderItem({this.image, this.name, this.price});
  @override
  _MyOrderItemState createState() => _MyOrderItemState();
}

class _MyOrderItemState extends State<MyOrderItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            widget.image,
            width: MediaQuery.of(context).size.width * .3,
          ),
          SizedBox(
            width: 24,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12,
              ),
              Text(widget.name,
                  style: GoogleFonts.alegreya()
                      .copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
              Text(widget.price,
                  style: GoogleFonts.alegreya().copyWith(
                    fontSize: 18,
                  )),
              SizedBox(
                height: 12,
              ),
              Container(
                  child: ButtonTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                minWidth: 117.0,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                height: 24.0,
                padding: EdgeInsets.all(0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    gradient: LinearGradient(
                      colors: [Color(0xFF512DA8), Color(0xFF673AB7)],
                      begin: FractionalOffset.centerLeft,
                      end: FractionalOffset.centerRight,
                    ),
                  ),
                  child: FlatButton(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text('Order Again',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ),
                    onPressed: () {},
                  ),
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
