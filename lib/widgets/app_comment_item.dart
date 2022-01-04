// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:listar_flutter/models/model.dart';
// import 'package:listar_flutter/widgets/widget.dart';

// class AppCommentItem extends StatelessWidget {
//   final CommentModel item;

//   AppCommentItem({Key key, this.item}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     if (item == null) {
//       return AppPlaceholder(
//         child: Container(
//           padding: EdgeInsets.all(8),
//           decoration: BoxDecoration(
//             color: Theme.of(context).cardColor,
//             borderRadius: BorderRadius.all(
//               Radius.circular(8),
//             ),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                     width: 48,
//                     height: 48,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.white,
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       padding: EdgeInsets.only(left: 8, right: 8),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               Container(
//                                 height: 10,
//                                 width: 150,
//                                 color: Colors.white,
//                               ),
//                               Container(
//                                 height: 10,
//                                 width: 50,
//                                 color: Colors.white,
//                               )
//                             ],
//                           ),
//                           SizedBox(height: 4),
//                           Container(
//                             height: 10,
//                             width: 50,
//                             color: Colors.white,
//                           )
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 4, bottom: 8),
//                 child: Container(
//                   height: 10,
//                   width: 100,
//                   color: Colors.white,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 4),
//                 child: Container(
//                   height: 10,
//                   color: Colors.white,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 4),
//                 child: Container(
//                   height: 10,
//                   color: Colors.white,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 4),
//                 child: Container(
//                   height: 10,
//                   color: Colors.white,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 4),
//                 child: Container(
//                   height: 10,
//                   color: Colors.white,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 4),
//                 child: Container(
//                   height: 10,
//                   color: Colors.white,
//                 ),
//               )
//             ],
//           ),
//         ),
//       );
//     }

//     return Container(
//       padding: EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         color: Theme.of(context).cardColor,
//         borderRadius: BorderRadius.all(
//           Radius.circular(8),
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 width: 48,
//                 height: 48,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                     image: AssetImage(item.user.image),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
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
//                           Expanded(
//                             child: Text(
//                               item.user.name,
//                               maxLines: 1,
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .subtitle2
//                                   .copyWith(fontWeight: FontWeight.w600),
//                             ),
//                           ),
//                           Text(
//                             item.createDate,
//                             style: Theme.of(context).textTheme.caption,
//                           )
//                         ],
//                       ),
//                       SizedBox(height: 4),
//                       RatingBar.builder(
//                         initialRating: item.rate,
//                         minRating: 1,
//                         allowHalfRating: true,
//                         unratedColor: Colors.amber.withAlpha(100),
//                         itemCount: 5,
//                         itemSize: 14.0,
//                         itemBuilder: (context, _) => Icon(
//                           Icons.star,
//                           color: Colors.amber,
//                         ),
//                         ignoreGestures: true,
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 4, bottom: 8),
//             child: Text(
//               item.title,
//               maxLines: 1,
//               style: Theme.of(context)
//                   .textTheme
//                   .subtitle2
//                   .copyWith(fontWeight: FontWeight.w600),
//             ),
//           ),
//           Text(
//             item.comment,
//             maxLines: 5,
//             style: Theme.of(context).textTheme.bodyText1,
//           )
//         ],
//       ),
//     );
//   }
// }
