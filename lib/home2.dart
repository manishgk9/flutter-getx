import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/counter.dart';
import 'package:getxlearning/homeThree.dart';
import 'package:getxlearning/model.dart';
import 'package:getxlearning/mvc.dart';

// var muvie = Muvie();
var muvie = Muvie(name: "Avtar", ticket: 1000).obs;

class HomeTwo extends StatelessWidget {
  const HomeTwo({super.key});

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
                Get.to(const HomeThree(),
                    arguments: "Deta is comes from page one");
              },
              child: Container(
                color: Colors.green,
                height: 200,
                width: 200,
                child: const Center(child: Text("Container one")),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: ElevatedButton(
                onPressed: () {
                  Get.to(CounterPage());
                },
                child: const Text("Counter")),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Obx(() => Text(muvie.value.name)),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: ElevatedButton(
                onPressed: () {
                  // muvie.name.value="Manish Ahir";
                  muvie.value.name = "Manish Ahir";
                  muvie.refresh();
                  print(muvie.value.name);
                },
                child: const Text("Change")),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: ElevatedButton(
                onPressed: () {
                  Get.to(MVCPage());
                },
                child: const Text("Model View Controller")),
          ),
        ],
      )),
    );
  }
}
