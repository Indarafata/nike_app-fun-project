import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_application/constants/theme.dart';
import 'package:nike_application/widget/search_menu.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
            right: defaultPadding,
            left: defaultPadding,
            top: 5.h,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/menu.png",
                    // width: 80,
                  ),
                  SizedBox(
                    width: 5.5.w,
                  ),
                  Expanded(
                    child: Text(
                      "Explore",
                      style:
                          GoogleFonts.raleway(fontSize: 32, fontWeight: bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      width: 13.w,
                      decoration: BoxDecoration(
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(100)),
                      child: Image.asset(
                        "assets/images/shoping-cart.png",
                        // width: 100,
                      ))
                ],
              ),
              // SearchMenu(),
              Row(
                children: [
                  Expanded(child: SearchMenu()),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue),
                    child: Image.asset(
                      "assets/images/filter.png",
                      width: 14.w,
                    ),
                  )
                ],
              ),
              Container(
                child: Expanded(
                    child: Column(
                  children: [
                    Image.asset("assets/images/highlight-product.png"),
                    Text("best seller"),
                    Text("nike jordan"),
                    Text("300k")
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
