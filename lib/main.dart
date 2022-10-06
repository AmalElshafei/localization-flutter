import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'Localizations/local_controller.dart';
import 'package:course/Localizations/local_controller.dart';

import 'Localizations/LnaguagesMap.dart';

void main() {
// WidgetsFlutterBinding.ensureInitialized();
// sharedpref =await SharedPreferences.getInstance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(getLocalCont());
    getLocalCont localCont = Get.find();

    return GetMaterialApp(
        locale: Get.deviceLocale,
        translations: Locall(),
        home: Scaffold(
          appBar: AppBar(
            title: Text('3'.tr),
          ),
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('1'.tr),
                  TextButton(
                      onPressed: () {
                        localCont.changeCode('ar');
                      },
                      child: const Text(
                        'عربية',
                        style: TextStyle(
                          color: Colors.blue,

                        ),
                      )),
                  TextButton(
                      onPressed: () {
                        localCont.changeCode('en');
                      },
                      child: const Text(
                        'Englis',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
