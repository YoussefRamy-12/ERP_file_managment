// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:mini_insta_pay/core/widgets/notification_card.dart';
// import 'package:mini_insta_pay/feature/home/notifications/notification.dart';
// import 'package:mini_insta_pay/feature/home/notifications/notification_details_screen.dart';

// class NotificationsScreen extends StatefulWidget {
//   const NotificationsScreen({Key? key}) : super(key: key);

//   @override
//   State<NotificationsScreen> createState() => _NotificationsScreenState();
// }

// class _NotificationsScreenState extends State<NotificationsScreen> {
//   List<NotificationItem> notifications = [
//     NotificationItem(
//       description: "Successfully sent \$10.00 to Johnatan",
//       icon: Icons.payment,
//       time: "12:45 am",
//       title: "Transfer Success",
//       isNew: true,
//     ),
//     NotificationItem(
//       icon: Icons.payment,
//       title: "Receive Payment",
//       description: "You received a payment from Alex Ferdinand of \$5000",
//       time: "12:55 am",
//       isNew: true,
//     ),
//     NotificationItem(
//       icon: Icons.payment,
//       title: "Receive Payment",
//       description: "You received a payment from Alex Ferdinand of \$5000",
//       time: "2 hours ago",
//     ),
//     NotificationItem(
//       icon: Icons.payment,
//       title: "Transfer Success",
//       description: "You have successfully sent Johnatan \$10.00",
//       time: "5 hours ago",
//     ),
//     NotificationItem(
//       icon: Icons.payment,
//       title: "Receive Payment",
//       description: "You received a payment from Alex Ferdinand of \$5000",
//       time: "5 hours ago",
//     ),
//     // Add more notifications here
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         title: Text(
//           "Notification",
//           style: TextStyle(
//             fontSize: 18.sp,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "New Notifications",
//               style: TextStyle(
//                 fontSize: 16.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             SizedBox(height: 10.h),
//             ...notifications
//                 .where((notification) => notification.isNew)
//                 .map((notification) => GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           notification.isNew = false;
//                         });
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => NotificationDetailScreen(
//                               notification: notification,
//                             ),
//                           ),
//                         );
//                       },
//                       child: NotificationCard(
//                         icon: notification.icon,
//                         title: notification.title,
//                         description: notification.description,
//                         time: notification.time,
//                         isNew: notification.isNew,
//                       ),
//                     ))
//                 .toList(),
//             SizedBox(height: 20.h),
//             Text(
//               "All Notifications",
//               style: TextStyle(
//                 fontSize: 16.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             SizedBox(height: 10.h),
//             Expanded(
//               child: ListView(
//                 children: notifications
//                     .where((notification) => !notification.isNew)
//                     .map((notification) => GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => NotificationDetailScreen(
//                                   notification: notification,
//                                 ),
//                               ),
//                             );
//                           },
//                           child: NotificationCard(
//                             icon: notification.icon,
//                             title: notification.title,
//                             description: notification.description,
//                             time: notification.time,
//                             isNew: notification.isNew,
//                           ),
//                         ))
//                     .toList(),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }