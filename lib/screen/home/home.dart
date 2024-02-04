import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:plants_app/data/user_data.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future scanBarcode() async {
    String scannerResult = await FlutterBarcodeScanner.scanBarcode(
      '#ff6666',
      'Cancel',
      true,
      ScanMode.BARCODE,
    );
    if (!mounted) return;
    if (scannerResult == '5') {
      Provider.of<UserData>(context, listen: false).increasePoints(5);
    } else if (scannerResult == '10') {
      Provider.of<UserData>(context, listen: false).increasePoints(10);
    }
  }

  @override
  Widget build(BuildContext context) {
    int level = Provider.of<UserData>(context).level;
    int points = Provider.of<UserData>(context).points;
    String imageString = Provider.of<UserData>(context).plantImage;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.network(
            'https://media.discordapp.net/attachments/1180640620600107050/1202805723164311602/raingif.gif?ex=65cecb1f&is=65bc561f&hm=93210fbffd1b87384d9db55b66d2c7761028a153560aa81051d3893646b63604&=&width=640&height=960',
            fit: BoxFit.fill,
            width: 100.w,
            height: 100.h,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Opacity(
                opacity: 0.9,
                child: Container(
                  height: 80,
                  width: 90.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          scanBarcode();
                        },
                        child: Image.asset(
                          'assets/images/image 21.png',
                          width: 50,
                        ),
                      ),
                      Text(
                        'Lv.$level',
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '$points💧',
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 90.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Opacity(
                    opacity: 0.90,
                    child: Image.asset(
                      imageString,
                    ),
                  ),
                ),
              ),
            ],
          )
          // Row(
          //   children: [Image.asset('assets/images/image 21.png')],
          // )
        ],
      ),
    );
  }
}
