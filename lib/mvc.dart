import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/mycontroller.dart';

// class MVCPage extends StatelessWidget {
//   var myController = Get.put(MyController());
// // Always make new object instence
// // var myController=MyController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("This is Getx Demo.."),
//         centerTitle: true,
//       ),
//       body: Center(
//           child: Column(
//         children: [
//           const Text("Performing Counting using MVC Method"),
//           Obx(
//             () => Text(
//               myController.count.toString(),
//               style: const TextStyle(fontSize: 25),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(14.0),
//             child: ElevatedButton(
//                 onPressed: () {
//                   myController.increament();
//                   print(myController.count);
//                 },
//                 child: const Text("Counter +")),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(14.0),
//             child: ElevatedButton(
//                 onPressed: () {
//                   myController.decreament();
//                   print(myController.count);
//                 },
//                 child: const Text("Counter -")),
//           ),
//         ],
//       )),
//     );
//   }
// }
class MVCPage extends StatelessWidget {
  var myController = Get.put(MyController());
// Always make new object instence
// var myController=MyController();
  var myController2 = Get.put(MyController2());
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
          const Text("Performing Counting using MVC Method"),
          GetBuilder<MyController2>(
            builder: (controller) => Text(
              myController2.count.toString(),
              style: const TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: ElevatedButton(
                onPressed: () {
                  myController2.increament();
                  print(myController2.count);
                },
                child: const Text("Counter +")),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: ElevatedButton(
                onPressed: () {
                  myController2.decreament();
                  print(myController2.count);
                },
                child: const Text("Counter -")),
          ),
        ],
      )),
    );
  }
}
