import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'local_widgets/product_attributes.dart';

class ProductPage extends StatefulWidget {
  static const String route = 'Product-Page';
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  var _count = 1;

  @override
  Widget build(BuildContext context) {
    double topPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 24),
              width: double.infinity,
              height: 380,
              color: const Color(0xffF5F5F5),
              child: Image.asset('assets/images/hair_dryer.jpg'),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(minHeight: 100.h - topPadding),
              child: IntrinsicHeight(
                child: Container(
                  margin: const EdgeInsets.only(top: 366),
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 2,
                        spreadRadius: 4,
                        color: Colors.black.withOpacity(.25),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        width: 50,
                        height: 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          color: const Color(0xffC2C2C2),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 100.w - 134,
                                  child: const Text(
                                    'Hair Dryer',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff34493a),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  height: 28,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: const Color(0xff3b7254),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Icon(
                                        Icons.remove,
                                        color: Color(0xffffffff),
                                        size: 19,
                                      ),
                                      Text(
                                        '$_count',
                                        style: const TextStyle(
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13),
                                      ),
                                      const Icon(
                                        Icons.add,
                                        color: Color(0xffffffff),
                                        size: 19,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Text(
                              '\$30.00',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff34493A),
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'About',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff384A41),
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Hair dryer only used for 2 month.\nThree power change mode.\nHot and Cold wind available.\nUse 110v',
                              style: TextStyle(
                                color: Color(0xff9D9999),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      const ProductAttributes(),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/Group 11.png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(width: 36),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                foregroundColor: const Color(0xffffffff),
                                backgroundColor: const Color(0xff3B7254),
                                minimumSize: Size(100.w - 158, 50),
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.shopping_bag_outlined,
                                  ),
                                  SizedBox(width: 8),
                                  Text('BUY NOW')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned.fill(
              top: 20,
              left: 20,
              right: 100.w - 50,
              bottom: 100.h - 50 - MediaQuery.of(context).padding.top,
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  height: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffEFEAEA),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
