import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testproject/languages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('app_name'.tr, style: TextStyle(fontSize: 40)),
          Text('app_title'.tr, style: TextStyle(fontSize: 40)),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Get.updateLocale(Locale('en', 'US'));
            },
            child: Text('English'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.updateLocale(Locale('bn', 'BD'));
            },
            child: Text('Bangla'),
          ),
        ],
      ),
    );
  }
}
