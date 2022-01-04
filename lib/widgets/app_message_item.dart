// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:listar_flutter/configs/config.dart';
// import 'package:listar_flutter/models/model.dart';
// import 'package:listar_flutter/widgets/widget.dart';

// class AppMessageItem extends StatelessWidget {
//   final MessageModel item;
//   final VoidCallback onPressed;

//   AppMessageItem({
//     Key key,
//     this.item,
//     this.onPressed,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     if (item == null) {
//       return AppPlaceholder(
//         child: Container(
//           padding: EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 width: 48,
//                 height: 48,
//                 color: Colors.white,
//               ),
//               Expanded(
//                 child: Container(
//                   padding: EdgeInsets.only(left: 8, right: 8),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           Container(
//                             height: 10,
//                             width: 150,
//                             color: Colors.white,
//                           ),
//                           Container(
//                             height: 10,
//                             width: 50,
//                             color: Colors.white,
//                           )
//                         ],
//                       ),
//                       SizedBox(height: 4),
//                       Container(
//                         height: 10,
//                         color: Colors.white,
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       );
//     }

//     return InkWell(
//       onTap: onPressed,
//       child: Container(
//         padding: EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             AppGroupCircleAvatar(
//               size: 48,
//               member: item.member,
//             ),
//             Expanded(
//               child: Container(
//                 padding: EdgeInsets.only(left: 8, right: 8),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Expanded(
//                           child: Text(
//                             item.roomName,
//                             maxLines: 1,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .subtitle2
//                                 .copyWith(fontWeight: FontWeight.w600),
//                           ),
//                         ),
//                         Text(
//                           DateFormat(
//                             'EEE MMM d yyyy',
//                             AppLanguage.defaultLanguage.languageCode,
//                           ).format(item.date),
//                           style: Theme.of(context).textTheme.caption,
//                         )
//                       ],
//                     ),
//                     SizedBox(height: 4),
//                     Text(
//                       item.message,
//                       maxLines: 1,
//                       style: Theme.of(context)
//                           .textTheme
//                           .caption
//                           .copyWith(fontWeight: FontWeight.w500),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
