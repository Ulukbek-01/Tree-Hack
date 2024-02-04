import 'package:flutter/material.dart';
import 'package:plants_app/screen/profile/account/account.dart';
import 'package:plants_app/screen/profile/upload_product/upload_product.dart';
import 'package:plants_app/screen/stores/store.dart';
import 'package:sizer/sizer.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 40,
          ),
          Container(
            height: 90,
            width: 90,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xff3B7254),
              shape: BoxShape.circle,
            ),
            child: Container(
              width: 85,
              height: 85,
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('assets/images/Ulukbek_Aitmatov.jpeg'),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Ulukbek Aitmatov',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pushNamed(Account.route),
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color(0xffffffff),
              backgroundColor: const Color(0xff3B7254),
              maximumSize: Size(80.w, 50),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.person,
                ),
                SizedBox(width: 20),
                Text('Account')
              ],
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pushNamed(Store.route),
            style: ElevatedButton.styleFrom(
              alignment: Alignment.center,
              foregroundColor: const Color(0xffffffff),
              backgroundColor: const Color(0xff3B7254),
              maximumSize: Size(80.w, 60),
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
                SizedBox(width: 20),
                Text('My Store'),
              ],
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () =>
                Navigator.of(context).pushNamed(UploadProduct.route),
            style: ElevatedButton.styleFrom(
              alignment: Alignment.center,
              foregroundColor: const Color(0xffffffff),
              backgroundColor: const Color(0xff3B7254),
              maximumSize: Size(80.w, 60),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.upload,
                ),
                SizedBox(width: 20),
                Text('Sell Product'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
