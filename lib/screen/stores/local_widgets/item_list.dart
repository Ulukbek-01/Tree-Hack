import 'package:flutter/material.dart';
import 'package:plants_app/data/user_data.dart';
import 'package:plants_app/screen/stores/product_page/product_page.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    int storeCount = Provider.of<UserData>(context).storeCount;
    return ListView.builder(
      itemCount: storeCount,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(ProductPage.route),
          child: Container(
            height: 96,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFFE8F5EE),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.25),
                  offset: const Offset(0, 4),
                  blurRadius: 4,
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              children: [
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    index == 0
                        ? 'assets/images/hair_dryer.jpg'
                        : index == 1
                            ? 'assets/images/botle.jpg'
                            : 'assets/images/new_dryer.jpg',
                    height: 66,
                    width: 66,
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hair Dryer',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3B7254),
                      ),
                    ),
                    SizedBox(
                      width: 100.w - 222,
                      child: const Text(
                        'Hair dryer only used for 2 month',
                        style: TextStyle(
                          color: Color(0xff9D9999),
                          fontWeight: FontWeight.w500,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 5),
                Container(
                  width: 66,
                  height: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xff81D066),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                          color: Colors.black.withOpacity(.25),
                        )
                      ]),
                  alignment: Alignment.center,
                  child: const Text(
                    '20p',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(
                        0xFF3A7f0D,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
