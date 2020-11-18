import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressItem extends StatefulWidget {
  String address, name;
  bool isSelected;
  AddressItem({
    this.address,
    this.isSelected,
    this.name,
  });
  @override
  _AddressItemState createState() => _AddressItemState();
}

class _AddressItemState extends State<AddressItem> {
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      value: widget.isSelected,
      groupValue: true,
      onChanged: (val) {
        setState(() {
          widget.isSelected = val;
        });
      },
      title: Text(widget.name,
          style: GoogleFonts.alegreya().copyWith(
              color: Colors.purple.shade400,
              fontSize: 18,
              fontWeight: FontWeight.w600)),
      subtitle: Text(widget.address,
          style: GoogleFonts.alegreya()
              .copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
    );
  }
}
