import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  var count = 0.obs;
  CounterPage({super.key});

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
          const Text("Performing Counting using Getx"),
          Obx(
            () => Text(
              "$count",
              style: const TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: ElevatedButton(
                onPressed: () {
                  count++;
                  print(count);
                },
                child: const Text("Counter +")),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: ElevatedButton(
                onPressed: () {
                  count--;
                  print(count);
                },
                child: const Text("Counter -")),
          ),
        ],
      )),
    );
  }
}
