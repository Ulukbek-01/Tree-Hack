import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:sizer/sizer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Future scanBarcode() async {
    // var status = await Permission.camera.status;
    // status = await Permission.camera.request();
    // if (status.isPermanentlyDenied) {
    //   print('isPer');
    // } else if (status.isDenied) {

    //   print(status.isDenied);
    // } else if (status.isGranted) {
    //   String scannerResult;
    //   try {
    String scannerResult = await FlutterBarcodeScanner.scanBarcode(
      '#ff6666',
      'Cancel',
      true,
      ScanMode.BARCODE,
    );
    print(scannerResult);
    // } on PlatformException {
    //   scannerResult = 'Failed to get paltform version.';
    // }
    // if (!mounted) return;
    // Provider.of<BarcodeData>(context, listen: false).fetchItems(
    //     Provider.of<IsOptovik>(context, listen: false).isOptovik,
    //     scannerResult);
    // }
  }

  @override
  Widget build(BuildContext context) {
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
                      const Text(
                        'Lv.3',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.grey,
                        ),
                      ),
                      const Text(
                        '26💧',
                        style: TextStyle(
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
                      'assets/images/rep_5.jpg',
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
