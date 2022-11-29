import 'dart:math';
import 'dart:ui';

import 'package:custom_paint/screens/line_paint_page.dart';
import 'package:custom_paint/screens/rectangle_paint_page.dart';
import 'package:custom_paint/utils/custom_paint.dart';
import 'package:flutter/material.dart';

class ExampleCustomPaint extends StatefulWidget {
  const ExampleCustomPaint({Key? key}) : super(key: key);

  @override
  State<ExampleCustomPaint> createState() => _ExampleCustomPaintState();
}
  List pages = [
    VeryNiceSmile(),
    NiceSmile(),
    MedicalSmile(),
    BadSmile(),
    VeryBadSmile(),
  ];
class _ExampleCustomPaintState extends State<ExampleCustomPaint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 50),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const RectanglePaint(),));
              },
              child: const Text("Example1", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400))),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ExampleCustomPaint(),));
              },
              child: const Text("Example2", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400))),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LinePaint(),));
              },
              child: const Text("Example3", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400))),
            
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Custom Painter"),
      ),
      body: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
        return Center(
          child: Container(
            color: Colors.white,
            child: CustomPaint(
              size: const Size(200, 200),
              painter: pages[index],
            ),
          ),
        );
      }),
    );
  }
}