import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PlantGridViewList extends StatefulWidget {
  const PlantGridViewList({super.key});

  @override
  State<PlantGridViewList> createState() => _PlantGridViewListState();
}

class _PlantGridViewListState extends State<PlantGridViewList> {
  List<Map<String, String>> plantList = [
    {
      'image': 'assets/images/rep_2.jpg',
      'name': 'Biniam',
      'level': '1',
    },
    {
      'image': 'assets/images/rep_4.jpg',
      'name': 'Ulukbek',
      'level': '3',
    },
    {
      'image': 'assets/images/rep_5.jpg',
      'name': 'Eunwoo',
      'level': '4',
    },
    {
      'image': 'assets/images/rep_3.jpg',
      'name': 'Yunwoo',
      'level': '2',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: MasonryGridView.builder(
          shrinkWrap: true,
          itemCount: plantList.length,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: const Color(0xffB2D3A1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(plantList[index]['image']!),
                        ),
                        const SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(plantList[index]['name']!),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text('LV. ${plantList[index]['level']}'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
