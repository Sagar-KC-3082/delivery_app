import 'package:delivery_app/views/authentication/pre_login_view.dart';
import 'package:delivery_app/views/bottom_nav_bar/bottom_nav_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomNavScreen(),
  ));
}