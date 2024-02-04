import 'package:flutter/material.dart';

class PlantCategoryList extends StatefulWidget {
  const PlantCategoryList({
    super.key,
  });

  @override
  State<PlantCategoryList> createState() => _PlantCategoryListState();
}

class _PlantCategoryListState extends State<PlantCategoryList> {
  var _selectedInd = 0;
  List<String> plantTypes = ['Recommend', 'Top', 'New', 'Explore', 'Interesting'];

  void updateState(int index) {
    setState(() {
      _selectedInd = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 25,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: plantTypes.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return _selectedInd == index
              ? Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: const Color(0xfff0f0f0),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    plantTypes[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff325A3E),
                    ),
                  ),
                )
              : GestureDetector(
                  onTap: () => updateState(index),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      plantTypes[index],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF999898),
                      ),
                    ),
                  ),
                );
        },
      ),
    );
  }
}
