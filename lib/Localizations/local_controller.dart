import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class getLocalCont extends GetxController{


void changeCode( String language) {
  Locale loocale= Locale(language);
  Get.updateLocale(loocale)
;}}