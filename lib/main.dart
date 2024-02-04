import 'package:flutter/material.dart';
import 'package:plants_app/data/user_data.dart';
import 'package:plants_app/screen/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:plants_app/screen/login/login.dart';
import 'package:plants_app/screen/profile/account/account.dart';
import 'package:plants_app/screen/profile/upload_product/upload_product.dart';
import 'package:plants_app/screen/stores/product_page/product_page.dart';
import 'package:plants_app/screen/stores/store.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => UserData()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const Login(),
          routes: {
            ProductPage.route: (context) => const ProductPage(),
            Store.route: (_) => const Store(),
            UploadProduct.route: (_) => const UploadProduct(),
            Account.route: (_) => const Account(),
            BottomNavBar.route: (_) => const BottomNavBar(),
          },
        ),
      );
    });
  }
}
