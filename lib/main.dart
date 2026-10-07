import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_shop/app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Food is nice',
      initialRoute: Routes.paymentMethod,
      getPages: AppPages.routes,
    );
  }
}
//this new line is just for testing 
//this new line is just for testing 
//this new line is just for testing 
//this new line is just for testing 
//this new line is just for testing 