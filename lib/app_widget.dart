import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:schooltech/app/view/student/search/search_course_view.dart';
import 'package:schooltech/app/view/student/search/search_universitys_view.dart';
import 'package:schooltech/app/controller/app_controller.dart';
import 'package:schooltech/app/view/login/login_page.dart';
import 'package:schooltech/app/view/student/home_student.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primaryColor: Colors.deepPurpleAccent,
            brightness: AppController.instance.isDark
                ? Brightness.dark
                : Brightness.light,
          ),
          routes: {
            '/': (context) => LoginPage(),
            '/home-student': (context) => HomeStudent(),
            '/search-univeristys': (context) => SearchUniversity(),
            '/search-courses': (context) => SearchCourse(),
          },
        );
      },
    );
  }
}
