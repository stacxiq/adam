import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('تسجيل حساب جديد '),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Center(
                    child: SizedBox(
                      height: 250,
                      width: 500,
                      child: Image.asset('assets/images/register.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  textfromfiledwid(
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'رجاءا ادخل الحقل المطلوب';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        suffixIcon: Icon(Icons.person_2_outlined),
                        suffixIconColor: Colors.black,
                        border: InputBorder.none,
                        labelText: ' الاسم الاول ',
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  textfromfiledwid(
                    TextFormField(
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
                        labelText: 'الاسم الثاني',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  textfromfiledwid(
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'رجاءا ادخل الحقل المطلوب';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        suffixIcon: Icon(Icons.email_outlined),
                        suffixIconColor: Colors.black,
                        border: InputBorder.none,
                        labelStyle: TextStyle(color: Colors.black),
                        labelText: 'البريد الالكتروني',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  textfromfiledwid(
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'رجاءا ادخل الحقل المطلوب';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        suffixIcon: Icon(Icons.lock),
                        suffixIconColor: Colors.black,
                        border: InputBorder.none,
                        labelStyle: TextStyle(color: Colors.black),
                        labelText: 'الرمز السري',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('يرجى الانتظار ')),
                        );
                      }
                    },
                    shape: const StadiumBorder(),
                    color: Colors.black,
                    child: const Text(
                      'تسجيل حساب جديد',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

textfromfiledwid(Widget child) => Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border.all(),
        
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
