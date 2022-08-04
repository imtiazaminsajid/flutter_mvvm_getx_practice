// import 'dart:developer';
// import 'dart:io';
//
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:intl/intl.dart';
//
// class Utils {
//   void showToast(String message, bool isError) {
//     Fluttertoast.showToast(
//         msg: message,
//         toastLength: Toast.LENGTH_LONG,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 5,
//         backgroundColor: isError ? Colors.red[900] : Colors.grey[700],
//         textColor: Colors.white,
//         fontSize: 16.0);
//   }
//   String formatDate(String date, String formatType) {
//     final deliveryDate = date;
//     var deliveryAt = DateTime.parse(deliveryDate);
//     return DateFormat(formatType).format(deliveryAt);
//   }
//
//   Future<bool> internetConnectivity() async {
//     try {
//       final result = await InternetAddress.lookup('google.com');
//       if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
//         return true;
//       }
//     } on SocketException catch (_) {
//       return false;
//     }
//     return false;
//   }
//
//   Widget emptyScreenPlaceholder( String title) {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       child: Center(
//           child: Text(
//             title,
//             style: const TextStyle(
//                 fontSize: 25.0,
//                 color: Colors.black,
//                 fontWeight: FontWeight.normal),
//           )
//       ),
//     );
//   }
//
//   Widget builtItemImageContainer(String? imageName) {
//     String imageUrl = "";
//     if (imageName != null && imageName.isNotEmpty) {
//       imageUrl = imageName;
//     }
//     bool validURL = Uri.parse(imageUrl).isAbsolute;
//
//     try {
//       return Container(
//           decoration: const BoxDecoration(
//             color: Colors.transparent,
//             borderRadius: BorderRadius.all(
//               Radius.circular(0),
//             ),
//           ),
//           child: Container(
//             decoration: const BoxDecoration(
//               borderRadius: BorderRadius.all(
//                 Radius.circular(5),
//               ),
//             ),
//             child: (validURL && imageUrl.isNotEmpty)
//                 ? CachedNetworkImage(
//               imageUrl: imageUrl,
//               imageBuilder: (context, imageProvider) => Container(
//                 decoration: BoxDecoration(
//                   borderRadius: const BorderRadius.all(
//                     Radius.circular(5),
//                   ),
//                   image: DecorationImage(
//                       image: imageProvider, fit: BoxFit.cover),
//                 ),
//               ),
//               placeholder: (context, url) => Container(
//                   padding: const EdgeInsets.all(0),
//                   child: const Center(child: CupertinoActivityIndicator())),
//               errorWidget: (context, url, error) => Container(
//                   height: 25,
//                   width: 25,
//                   margin: const EdgeInsets.all(0),
//                   child: Image.asset("assets/images/placeholder_image.png", fit: BoxFit.cover,)),
//             )
//                 : Container(
//               margin: const EdgeInsets.all(8.0),
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(2),
//                 ),
//                 image: DecorationImage(
//                     image: AssetImage("assets/images/placeholder_image.png"),
//                     fit: BoxFit.cover),
//               ),
//             ),
//           ));
//     } catch (error) {
//       log("error : $error");
//       return Container(
//         margin: const EdgeInsets.all(8.0),
//         decoration: const BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.all(
//             Radius.circular(2),
//           ),
//           image: DecorationImage(
//               image: AssetImage("assets/images/placeholder_image.png"),
//               fit: BoxFit.cover),
//         ),
//       );
//     }
//   }
// }