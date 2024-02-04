import 'package:flutter/material.dart';
import 'package:plants_app/screen/stores/local_widgets/item_list.dart';
import 'package:sizer/sizer.dart';

import '../community/local_widgets/plant_list.dart';

class Store extends StatelessWidget {
  static const String route = 'store';
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        // automaticallyImplyLeading: false,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Image.asset(
        //     'assets/images/align-justify.png',
        //     width: 26,
        //   ),
        // ),
        actions: [
          const CircleAvatar(
            radius: 13,
            child: Icon(
              Icons.person,
              color: Colors.green,
            ),
          ),
          const SizedBox(width: 24),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 100.w),
          SizedBox(
            width: 90.w,
            child: const TextField(
              decoration: InputDecoration(
                  fillColor: Color(0xfff0f0f0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search Plants',
                  isDense: true,
                  suffixIcon: Icon(Icons.keyboard_voice_outlined)),
            ),
          ),
          const SizedBox(height: 16),
          const PlantCategoryList(),
          const SizedBox(height: 16),
          const Expanded(child: ItemList()),
        ],
      ),
    );
  }
}
