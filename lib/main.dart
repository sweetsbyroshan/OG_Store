import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:og_store/pages/address_create.dart';
import 'package:og_store/pages/address_list.dart';
import 'package:og_store/pages/cart.dart';
import 'package:og_store/pages/checkout.dart';
import 'package:og_store/pages/confirmation.dart';
import 'package:og_store/pages/favourites.dart';
import 'package:og_store/pages/featured.dart';
import 'package:og_store/pages/firstscreen.dart';
import 'package:og_store/pages/home.dart';
import 'package:og_store/pages/login.dart';
import 'package:og_store/pages/menu.dart';
import 'package:og_store/pages/my_orders.dart';
import 'package:og_store/pages/productpage.dart';
import 'package:og_store/pages/profile.dart';
import 'package:og_store/pages/signup.dart';

import 'pages/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black, // navigation bar color
      statusBarColor: Colors.black, // status bar color
    ));
    return MaterialApp(
      title: 'OG Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case 'splash':
            return MaterialPageRoute(builder: (_) => SplashScreen());
          case 'first':
            return MaterialPageRoute(builder: (_) => FirstScreenPage());
          case 'login':
            return MaterialPageRoute(builder: (_) => LoginPage());
          case 'signup':
            return MaterialPageRoute(builder: (_) => SignUpPage());
          case 'home':
            return MaterialPageRoute(builder: (_) => HomePage());
          case 'featured':
            return MaterialPageRoute(builder: (_) => FeaturedPage());
          case 'product':
            return MaterialPageRoute(builder: (_) => ProductPage());
          case 'cart':
            return MaterialPageRoute(builder: (_) => CartPage());
          case 'addressL':
            return MaterialPageRoute(builder: (_) => AddressListPage());
          case 'addressC':
            return MaterialPageRoute(builder: (_) => AddressCreatePage());
          case 'checkout':
            return MaterialPageRoute(builder: (_) => CheckoutPage());
          case 'confirmation':
            return MaterialPageRoute(builder: (_) => ConfirmationPage());
          case 'menu':
            return MaterialPageRoute(builder: (_) => MenuPage());
          case 'fav':
            return MaterialPageRoute(builder: (_) => FavouritesPage());
          case 'profile':
            return MaterialPageRoute(builder: (_) => ProfilePage());
          case 'order':
            return MaterialPageRoute(builder: (_) => MyOrderPage());
        }
      },
    );
  }
}
