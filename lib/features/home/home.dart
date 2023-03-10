import 'package:adam/config/pd.dart';
import 'package:adam/features/home/widgets/category_item.dart';
import 'package:adam/features/home/widgets/dots.dart';
import 'package:adam/features/home/widgets/product.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../models/products.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final banners = [
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
    'assets/images/7.png',
  ];

  int _currentId = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('الرئيسية'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: context.height * 0.2,
                        enlargeCenterPage: false,
                        autoPlay: true,
                        viewportFraction: 1,
                        autoPlayInterval: const Duration(seconds: 5),
                        onPageChanged:
                            (int i, CarouselPageChangedReason reason) {
                          setState(() {
                            _currentId = i;
                          });
                        },
                      ),
                      items: banners.map((path) {
                        return SizedBox(
                          width: context.width,
                          child: Image.asset(
                            path,
                            fit: BoxFit.fill,
                          ),
                        );
                      }).toList(),
                    ),
                    BlogSliderDotsWidget(
                      active: _currentId,
                    ),
                  ],
                ),
                SizedBox(
                  height: context.height * 0.15,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int index) {
                      return CategoryHorizontalListItem();
                    },
                    itemCount: 8,
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      'العروض',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'عرض الكل',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: context.height * 0.3,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int index) {
                      return ProductHorizontalListItem(
                        product: productList[index],
                        discount: true,
                      );
                    },
                    itemCount: productList.length,
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      'اخر المنتجات',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'عرض الكل',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: context.height * 0.3,
                  child: ListView.builder(
                    shrinkWrap: false,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int index) {
                      return ProductHorizontalListItem(
                        product: productList[index],
                        discount: true,
                      );
                    },
                    itemCount: productList.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(FontAwesomeIcons.whatsapp),
      ),
    );
  }
}
