// import 'package:flutter/material.dart';
// import 'package:listar_flutter/models/model.dart';
// import 'package:listar_flutter/widgets/widget.dart';

// enum CategoryType { full, icon }

// class AppCategory extends StatelessWidget {
//   AppCategory({
//     Key key,
//     this.type = CategoryType.full,
//     this.item,
//     this.onPressed,
//   }) : super(key: key);

//   final CategoryType type;
//   final CategoryModel item;
//   final ValueChanged<CategoryModel> onPressed;

//   @override
//   Widget build(BuildContext context) {
//     switch (type) {
//       case CategoryType.full:
//         if (item == null) {
//           return Padding(
//             padding: EdgeInsets.only(top: 8, bottom: 8),
//             child: AppPlaceholder(
//               child: Container(
//                 height: 120,
//                 alignment: Alignment.topLeft,
//                 padding: EdgeInsets.all(8),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(8),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         }

//         return GestureDetector(
//           onTap: () => onPressed(item),
//           child: Container(
//             height: 120,
//             alignment: Alignment.topLeft,
//             margin: EdgeInsets.only(top: 8, bottom: 8),
//             padding: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(item.image),
//                 fit: BoxFit.cover,
//               ),
//               borderRadius: BorderRadius.all(
//                 Radius.circular(8),
//               ),
//             ),
//             child: Column(
//               children: <Widget>[
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     Container(
//                       width: 32,
//                       height: 32,
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: item.color,
//                       ),
//                       child: Icon(
//                         item.icon,
//                         color: Colors.white,
//                         size: 18,
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 8, right: 8),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Text(
//                             item.title,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .subtitle1
//                                 .copyWith(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w600),
//                           ),
//                           Text(
//                             '${item.count} location',
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .bodyText1
//                                 .copyWith(color: Colors.white),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ),
//         );

//       case CategoryType.icon:
//         if (item == null) {
//           return Padding(
//             padding: EdgeInsets.only(top: 8, bottom: 8),
//             child: AppPlaceholder(
//               child: Container(
//                 height: 120,
//                 alignment: Alignment.topLeft,
//                 padding: EdgeInsets.all(8),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(8),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         }
//         return InkWell(
//             onTap: () => onPressed(item),
//             child: Container(
//               padding: EdgeInsets.only(top: 8, bottom: 8),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                     width: 60,
//                     height: 60,
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(8),
//                       ),
//                       color: item.color,
//                     ),
//                     child: Icon(
//                       item.icon,
//                       color: Colors.white,
//                       size: 32,
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(left: 8, right: 8),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Text(
//                           item.title,
//                           style: Theme.of(context)
//                               .textTheme
//                               .subtitle1
//                               .copyWith(fontWeight: FontWeight.w600),
//                         ),
//                         Text(
//                           '${item.count} location',
//                           style: Theme.of(context).textTheme.bodyText1,
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ));
//       default:
//         return Container();
//     }
//   }
// }
