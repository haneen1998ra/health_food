import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:health_food_app/core/share/inKwill_button.dart';
import 'package:get/get.dart';

class InKwill extends StatefulWidget {
  const InKwill({super.key});
  _InKwillState createState() => _InKwillState();
}

class _InKwillState extends State<InKwill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: InKwillButton(
          onTap: () {
            Get.dialog(Stack(
              children: [
                Text(" datatkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkfffjjjff")
              ],
            ));
          },
          text: "press on"),
    ));
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../core/constant/app_images.dart';

// class DialogPart extends StatelessWidget {
//   const DialogPart({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Color(0xf035014),
//         body: TextButton(
//           child: Text("haneen"),
//           onPressed: () =>
//         ));
//   }
// }
// InkWell(
//             child: Text("press on"),
//             onTap: () {
//               Get.dialog(
//                   barrierDismissible: false,
//                   Dialog(
//                       backgroundColor: Colors.amberAccent,
//                       child: MaterialButton(
//                           onPressed: () async => false,
//                           child: Stack(children: [
//                             Container(
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(20)),
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Center(
//                                     child: Text("No Internet Connection"),
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   Icon(Icons.photo),
//                                   Padding(
//                                     padding:
//                                         EdgeInsets.symmetric(horizontal: 10),
//                                     child: Text(
//                                       "Please check your connection again,or connect        to wi-fi.",
//                                     ),
//                                   ),
//                                   Divider(
//                                     color: Colors.grey,
//                                     thickness: 1,
//                                   ),
//                                   Center(
//                                     child: Container(
//                                       height: 50,
//                                       width: 30,
//                                       alignment: Alignment.center,
//                                       decoration: BoxDecoration(
//                                           color: Colors.black,
//                                           borderRadius: const BorderRadius.all(
//                                               Radius.circular(10))),
//
//                                child: Text(
//                                         "Refresh",
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ]))));
//             }));
//   }

// // import 'package:flutter/material.dart';
// import 'package:health_food_app/core/constant/text.dart';

// class SuccessSgin extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//             child: Column(children: [
//       // ignore: avoid_unnecessary_containers
//       Container(
//         height: 100,
//         width: 100,
//         decoration: BoxDecoration(

//             gradient: LinearGradient(colors: [Color(0xffc8e6c9), Colors.white]),
//             borderRadius: BorderRadius.circular(10),
//             ),
//         child: Container(
//             height: 90,
//         width: 90,
//         decoration: BoxDecoration(

//             color:Colors.white,
//             borderRadius: BorderRadius.circular(10),
//             ),

//           child: Icon(Icons.check),
//         ),
//       ),
//       Text("Success"),
//       SizedBox(
//         height: 10,
//       ),
//       Text(AppText().congraText),
//       Text(AppText().completeText),
//       Container(
//         color: Colors.green,
//         child: TextButton(onPressed: () {}, child: Text("Continue")),
//       )
//     ])));
//   }
// }

//       )
//     ])));
//   }
// }
