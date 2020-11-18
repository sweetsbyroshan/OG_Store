import 'package:flutter/material.dart';

class OGButton extends StatelessWidget {
  Function onPressed;
  String text;
  bool isBottomNav;
  OGButton({this.text, this.onPressed, this.isBottomNav});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      minWidth: 217.0,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      height: 24.0,
      padding: EdgeInsets.all(0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: isBottomNav == false
              ? BorderRadius.circular(6)
              : BorderRadius.circular(0),
          gradient: LinearGradient(
            colors: [Color(0xFF512DA8), Color(0xFF673AB7)],
            begin: FractionalOffset.centerLeft,
            end: FractionalOffset.centerRight,
          ),
        ),
        child: FlatButton(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
          ),
          // color: Color(0xFF698F3C),
          onPressed: () {
            onPressed();
          },
        ),
      ),
    );
  }
}
