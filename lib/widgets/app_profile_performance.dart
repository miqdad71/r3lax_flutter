// import 'package:flutter/material.dart';
// import 'package:listar_flutter/utils/utils.dart';
// import 'package:listar_flutter/widgets/widget.dart';

// class AppProfilePerformance extends StatelessWidget {
//   final List<Map<String, dynamic>> data;
//   final Function(Map<String, dynamic>) onPressed;

//   AppProfilePerformance({
//     Key key,
//     this.data,
//     this.onPressed,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     if (data == null) {
//       return Padding(
//         padding: EdgeInsets.only(top: 8),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [1, 2, 3].map((item) {
//             return AppPlaceholder(
//               child: Column(
//                 children: <Widget>[
//                   Container(
//                     width: 50,
//                     height: 10,
//                     color: Colors.white,
//                   ),
//                   SizedBox(height: 4),
//                   Container(
//                     width: 50,
//                     height: 10,
//                     color: Colors.white,
//                   ),
//                 ],
//               ),
//             );
//           }).toList(),
//         ),
//       );
//     }

//     return Padding(
//       padding: EdgeInsets.only(top: 8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: data.map((item) {
//           return InkWell(
//             onTap: () {
//               onPressed(item);
//             },
//             child: Column(
//               children: <Widget>[
//                 Text(
//                   item['value'],
//                   style: Theme.of(context).textTheme.subtitle2,
//                 ),
//                 Text(
//                   Translate.of(context).translate(
//                     item['title'],
//                   ),
//                   style: Theme.of(context).textTheme.caption,
//                 )
//               ],
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
