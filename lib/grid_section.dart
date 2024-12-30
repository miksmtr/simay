
import 'package:flutter/material.dart';
import 'package:simay/grid_section_item.dart';

class GridSection extends StatelessWidget {
  const GridSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 3,
      child: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10.0),
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: List.generate(6, (index) {
          return GridSectionItem(index: index);
        }),
      ),
    );
  }
}