import 'package:flutter/material.dart';
import 'package:simay/convert.dart';

import 'icon_type.dart';
// ... existing code ...
class GridSectionItem extends StatelessWidget {
  const GridSectionItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(IconType.fromIndex(index).icon, size: 100,color: createMaterialColor(Color(0xFF3EC5EA)).withOpacity(0.8),),
          const SizedBox(height: 8),
          Text(
            'Öğe ${index + 1}',
            style: TextStyle(fontSize: 36),
          ),
        ],
      ),
    );
  }
}