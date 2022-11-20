import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/CONTROLER/C_G.dart';

import 'UI/home.dart';

void main() {
  Get.put(C_G());
  runApp(const MyApp());
}
