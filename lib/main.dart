import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          title: 'Nike Application',

          theme: ThemeData(
            fontFamily: 'Nunito',
            primarySwatch: Colors.purple,
          ),
          debugShowCheckedModeBanner: false,
          // initialRoute: AppPages.initial,
          getPages: AppPages.pages,
          initialRoute: AppPages.initial,
        );
      },
    );

    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: const MyHomePage(title: 'Flutter Demo Home Page'),
    // );
  }
}
