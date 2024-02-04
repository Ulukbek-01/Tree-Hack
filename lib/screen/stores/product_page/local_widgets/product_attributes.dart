import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 24),
          Image.asset(
            'assets/images/Group 9.png',
            width: 50,
            height: 50,
          ),
          const SizedBox(width: 6),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Height',
                style: TextStyle(
                  color: Color(0xff8A8A8A),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '7.5"',
                style: TextStyle(),
              )
            ],
          ),
          const SizedBox(width: 24),
          Transform(
            alignment: const Alignment(.1, 0),
            transform: Matrix4.identity()..rotateZ(90 * 3.1415927 / 180),
            child: Image.asset(
              'assets/images/Group 9.png',
              width: 50,
              height: 50,
            ),
          ),
          const SizedBox(width: 10),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Weight',
                style: TextStyle(
                  color: Color(0xff8A8A8A),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '7.5"',
                style: TextStyle(),
              )
            ],
          ),
          const SizedBox(width: 20),
          Image.asset(
            'assets/images/Group 10.png',
            width: 50,
            height: 50,
          ),
          const SizedBox(width: 6),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Humadity',
                style: TextStyle(
                  color: Color(0xff8A8A8A),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '7.5"',
                style: TextStyle(),
              )
            ],
          ),
          const SizedBox(width: 24),
        ],
      ),
    );
  }
}
