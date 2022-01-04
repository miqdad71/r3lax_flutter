// import 'package:flutter/material.dart';

// enum TagType { status, chip, rateSmall }

// class AppTag extends StatelessWidget {
//   AppTag(
//     this.data, {
//     Key key,
//     this.type,
//     this.icon,
//     this.onPressed,
//   }) : super(key: key);

//   final String data;
//   final TagType type;
//   final Widget icon;
//   final VoidCallback onPressed;

//   @override
//   Widget build(BuildContext context) {
//     switch (type) {
//       case TagType.rateSmall:
//         return InkWell(
//           onTap: onPressed,
//           child: Container(
//             padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
//             decoration: BoxDecoration(
//               color: Theme.of(context).primaryColor,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(4),
//                 bottomLeft: Radius.circular(4),
//                 bottomRight: Radius.circular(4),
//               ),
//             ),
//             child: Text(
//               data,
//               style: Theme.of(context).textTheme.caption.copyWith(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w600,
//                   ),
//             ),
//           ),
//         );

//       case TagType.status:
//         return InkWell(
//           onTap: onPressed,
//           child: Container(
//             padding: EdgeInsets.only(
//               left: 4,
//               right: 4,
//               top: 2,
//               bottom: 2,
//             ),
//             decoration: BoxDecoration(
//               color: Theme.of(context).primaryColor,
//               borderRadius: BorderRadius.all(Radius.circular(2)),
//             ),
//             child: Text(
//               data,
//               style: Theme.of(context)
//                   .textTheme
//                   .caption
//                   .copyWith(color: Colors.white),
//             ),
//           ),
//         );

//       case TagType.chip:
//         return InkWell(
//           onTap: onPressed,
//           child: Container(
//             padding: EdgeInsets.only(
//               top: 4,
//               bottom: 4,
//               left: 8,
//               right: 8,
//             ),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(
//                 Radius.circular(8),
//               ),
//               color: Theme.of(context).dividerColor,
//             ),
//             child: Container(
//               child: Row(
//                 children: <Widget>[
//                   icon != null
//                       ? Padding(
//                           padding: EdgeInsets.only(right: 4),
//                           child: icon,
//                         )
//                       : Container(),
//                   Text(
//                     data,
//                     style: Theme.of(context)
//                         .textTheme
//                         .caption
//                         .copyWith(color: Theme.of(context).accentColor),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         );

//       default:
//         return InkWell(
//           onTap: onPressed,
//           child: Container(),
//         );
//     }
//   }
// }
