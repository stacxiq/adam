import 'package:flutter/material.dart';

import 'package:adam/config/constants.dart';

class BlogSliderDotsWidget extends StatelessWidget {
  final int active;
  const BlogSliderDotsWidget({
    Key? key,
    required this.active,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 150.0,
        left: 0.0,
        right: 0.0,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(banners.length, (index) => Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: active == index
                              ? Colors.black87
                              : Colors.white),
                      shape: BoxShape.circle,
                      color: active == index
                          ? Colors.black87
                          : Colors.white)))
          
          
        ));
  }
}
