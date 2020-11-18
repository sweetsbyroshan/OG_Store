import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:og_store/widgets/og_button.dart';

class ConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/confirmation.png',
                  width: 100,
                ),
                SizedBox(
                  height: 24,
                ),
                Text('Confirmation',
                    style: GoogleFonts.alegreya().copyWith(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 12,
                ),
                Text(
                    'You have successfully \ncompleted your payment procedure.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.alegreyaSans()
                        .copyWith(fontSize: 18, color: Colors.black)),
              ],
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: Container(
        color: Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: OGButton(
          isBottomNav: false,
          text: 'Back to Home',
          onPressed: () {
            Navigator.pushReplacementNamed(context, 'home');
          },
        ),
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
