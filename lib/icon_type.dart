import 'package:flutter/material.dart';

enum IconType {
  home,
  bell,
  star,
  camera,
  play,
  search;
static IconType fromIndex(int index) {
    return IconType.values[index % IconType.values.length];
  }
  IconData get icon {
    switch (this) {
      case IconType.home:
        return Icons.home;
      case IconType.bell:
        return Icons.notifications;
      case IconType.star:
        return Icons.star;
      case IconType.camera:
        return Icons.camera_alt;
      case IconType.play:
        return Icons.play_arrow;
      case IconType.search:
        return Icons.search;
    }
    
  }
}
