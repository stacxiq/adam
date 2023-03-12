import 'dart:ffi';
import 'dart:io';

import 'package:adam/features/Auth/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';

class BuyPage extends StatefulWidget {
  const BuyPage({super.key});

  @override
  State<BuyPage> createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  @override
  Widget build(BuildContext context) {
    double currentSliderValue = 20.0;
    bool cruunt = false;
    File? image;
    var imagepicker = ImagePicker();
    final formKey = GlobalKey<FormState>();


    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(' قم ببيع جهازك'),
      ),
      body: Form(
        key: formKey,
        child: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                textfromfiledwid(TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'رجاءا ادخل الحقل المطلوب';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    suffixIcon: Icon(Icons.device_unknown),
                    suffixIconColor: Colors.black,
                    border: InputBorder.none,
                    labelStyle: TextStyle(color: Colors.black),
                    labelText: 'اسم الجهاز',
                  ),
                )),
                const SizedBox(
                  height: 10,
                ),
                textfromfiledwid(TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'رجاءا ادخل الحقل المطلوب';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    suffixIcon: Icon(Icons.devices),
                    suffixIconColor: Colors.black,
                    border: InputBorder.none,
                    labelStyle: TextStyle(color: Colors.black),
                    labelText: 'نوع  الجهاز',
                  ),
                )),
                const SizedBox(
                  height: 10,
                ),
                const Text('نسبة نظافة الجهاز '),
                const SizedBox(
                  height: 5,
                ),
                Slider(
                  divisions: 10,
                  value: currentSliderValue,
                  onChanged: (double value) {
                    setState(() {
                      currentSliderValue = value;
                    });
                  },
                  label: currentSliderValue.round().toString(),
                  thumbColor: Colors.white,
                  activeColor: Colors.black,
                  inactiveColor: Colors.white,
                  max: 100,
                ),
                const SizedBox(
                  height: 15,
                ),
                textfromfiledwid(TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'رجاءا ادخل الحقل المطلوب';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    suffixIcon: Icon(Icons.hardware),
                    suffixIconColor: Colors.black,
                    border: InputBorder.none,
                    labelStyle: TextStyle(color: Colors.black),
                    labelText: 'الهارد',
                  ),
                )),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: SwitchListTile(
                    value: cruunt,
                    onChanged: (bool value) {
                      setState(() {
                        cruunt = value;
                      });
                    },
                    title: const Text('هل يحتوي على ملحقات '),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                textfromfiledwid(TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'رجاءا ادخل الحقل المطلوب';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    suffixIcon: Icon(Icons.phone),
                    suffixIconColor: Colors.black,
                    border: InputBorder.none,
                    labelStyle: TextStyle(color: Colors.black),
                    labelText: 'رقم الهاتف ',
                  ),
                )),
                const SizedBox(
                  height: 15,
                ),
                textfromfiledwid(TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'رجاءا ادخل الحقل المطلوب';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    suffixIcon: Icon(Icons.home),
                    suffixIconColor: Colors.black,
                    border: InputBorder.none,
                    labelStyle: TextStyle(color: Colors.black),
                    labelText: 'العنوان',
                  ),
                )),
                const SizedBox(
                  height: 15,
                ),
                textfromfiledwid(TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'رجاءا ادخل الحقل المطلوب';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    suffixIcon: Icon(Icons.person_4_outlined),
                    suffixIconColor: Colors.black,
                    border: InputBorder.none,
                    labelStyle: TextStyle(color: Colors.black),
                    labelText: 'الملاحظات',
                  ),
                )),
                const SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  onPressed: () async {
                    var pickedimage = await imagepicker.pickImage(
                      source: ImageSource.gallery,
                      maxWidth: 1800,
                      maxHeight: 1800,
                    );
                    if (pickedimage != null) {
                      setState(() {
                        image = File(pickedimage.path);
                      });
                    } else {}
                  },
                  shape: const StadiumBorder(),
                  color: Colors.black,
                  child: const Text(
                    "رفع صور ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  shape: const StadiumBorder(),
                  color: Colors.black,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('يرجى الانتظار ')),
                      );
                    }
                  },
                  child: const Text(
                    'اضافة',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}

