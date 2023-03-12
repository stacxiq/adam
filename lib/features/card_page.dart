import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';

import 'Auth/register.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  File? image;
  var imagepicker = ImagePicker();
  uploadimage() async {
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
  }

  final formKey = GlobalKey<FormState>();
  static const IconData credit_card =
      IconData(0xe19f, fontFamily: 'MaterialIcons');
  static const IconData attach_money =
      IconData(0xe0b2, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الكارتات'),
        elevation: 0.0,
      ),
      body: Form(
        key: formKey,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(12.0),
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
                  suffixIcon: Icon(credit_card),
                  suffixIconColor: Colors.black,
                  border: InputBorder.none,
                  labelStyle: TextStyle(color: Colors.black),
                  labelText: 'الكارت ',
                ),
              )),
              const SizedBox(
                height: 25,
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
                  suffixIcon: Icon(attach_money),
                  suffixIconColor: Colors.black,
                  border: InputBorder.none,
                  labelStyle: TextStyle(color: Colors.black),
                  labelText: 'فئة الكارت',
                ),
              )),
              MaterialButton(
                onPressed: () {
                  uploadimage();
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
        )),
      ),
    );
  }
}
