import 'package:car_rental/home_page.dart';
import 'package:car_rental/intro_page.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp( MaterialApp(debugShowCheckedModeBanner: false,home:IntroPage(),routes: {'/home_page':(context)=> const HomePage()},));//routes:{'/intropage':(context)=>intro_page(),'/home_page':(context)=>home_page()} ,),);
}