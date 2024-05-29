import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeThree extends StatelessWidget {
  const HomeThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is Getx Demo.."),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          const Text("Performing Routing using Getx"),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GestureDetector(
              onTap: () {
                print("Rout one is cliked");
                Get.back();
              },
              child: Container(
                color: Colors.red,
                height: 200,
                width: 200,
                child: const Center(child: Text("Container Two")),
              ),
            ),
          ),
          Text("${Get.arguments}")
          // get.of(_name())
        ],
      )),
    );
  }
}
