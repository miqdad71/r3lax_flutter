// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:intl/intl.dart';
// import 'package:listar_flutter/configs/config.dart';
// import 'package:listar_flutter/models/model.dart';
// import 'package:listar_flutter/utils/translate.dart';
// import 'package:listar_flutter/widgets/widget.dart';

// class AppProductEventItem extends StatelessWidget {
//   AppProductEventItem({
//     Key key,
//     this.item,
//     this.onPressed,
//     this.type,
//   }) : super(key: key);

//   final ProductEventModel item;
//   final ProductViewType type;
//   final Function(ProductEventModel) onPressed;
//   final currency = String.fromCharCode(0x24);

//   @override
//   Widget build(BuildContext context) {
//     ///Status
//     Widget status = Container();
//     if (item != null && item.status.isNotEmpty) {
//       status = Padding(
//         padding: EdgeInsets.all(4),
//         child: AppTag(
//           item.status,
//           type: TagType.status,
//         ),
//       );
//     }

//     switch (type) {

//       ///Mode View Small
//       case ProductViewType.small:
//         if (item == null) {
//           return AppPlaceholder(
//             child: Row(
//               children: <Widget>[
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),
//                     color: Colors.white,
//                   ),
//                   width: 80,
//                   height: 80,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(
//                     left: 8,
//                     right: 8,
//                     top: 4,
//                     bottom: 4,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Container(
//                         height: 10,
//                         width: 180,
//                         color: Colors.white,
//                       ),
//                       SizedBox(height: 4),
//                       Container(
//                         height: 10,
//                         width: 150,
//                         color: Colors.white,
//                       ),
//                       SizedBox(height: 8),
//                       Container(
//                         height: 10,
//                         width: 100,
//                         color: Colors.white,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         }

//         return InkWell(
//           onTap: () {
//             onPressed(item);
//           },
//           borderRadius: BorderRadius.circular(8),
//           child: Row(
//             children: <Widget>[
//               Container(
//                 width: 80,
//                 height: 100,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   image: DecorationImage(
//                     image: AssetImage(item.image),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: EdgeInsets.only(
//                     left: 10,
//                     right: 10,
//                     top: 5,
//                     bottom: 5,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         DateFormat(
//                           'EEEE d MMM yyyy',
//                           AppLanguage.defaultLanguage.languageCode,
//                         ).format(item.date),
//                         style: Theme.of(context).textTheme.caption.copyWith(
//                               color: Theme.of(context).primaryColor,
//                             ),
//                       ),
//                       SizedBox(height: 4),
//                       Text(
//                         item.title,
//                         maxLines: 2,
//                         style: Theme.of(context)
//                             .textTheme
//                             .subtitle2
//                             .copyWith(fontWeight: FontWeight.w600),
//                       ),
//                       SizedBox(height: 8),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: <Widget>[
//                           AppTag(
//                             "${item.rate}",
//                             type: TagType.rateSmall,
//                           ),
//                           SizedBox(width: 4),
//                           RatingBar.builder(
//                             initialRating: item.rate,
//                             minRating: 1,
//                             allowHalfRating: true,
//                             unratedColor: Colors.amber.withAlpha(100),
//                             itemCount: 5,
//                             itemSize: 14.0,
//                             itemBuilder: (context, _) => Icon(
//                               Icons.star,
//                               color: Colors.amber,
//                             ),
//                             ignoreGestures: true,
//                           )
//                         ],
//                       ),
//                       SizedBox(height: 8),
//                       Row(
//                         children: <Widget>[
//                           Icon(
//                             Icons.location_on,
//                             size: 12,
//                             color: Theme.of(context).primaryColor,
//                           ),
//                           SizedBox(width: 4),
//                           Expanded(
//                             child: Text(
//                               item.address,
//                               maxLines: 1,
//                               style: Theme.of(context).textTheme.caption,
//                             ),
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         );

//       ///Mode View Gird
//       case ProductViewType.gird:
//         if (item == null) {
//           return AppPlaceholder(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Container(
//                   height: 120,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(8),
//                     ),
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(height: 4),
//                 Container(
//                   height: 10,
//                   width: 80,
//                   color: Colors.white,
//                 ),
//                 SizedBox(height: 4),
//                 Container(
//                   height: 10,
//                   width: 100,
//                   color: Colors.white,
//                 ),
//                 SizedBox(height: 8),
//                 Container(
//                   height: 20,
//                   width: 100,
//                   color: Colors.white,
//                 ),
//                 SizedBox(height: 8),
//                 Container(
//                   height: 10,
//                   width: 80,
//                   color: Colors.white,
//                 ),
//               ],
//             ),
//           );
//         }

//         return InkWell(
//           onTap: () {
//             onPressed(item);
//           },
//           borderRadius: BorderRadius.circular(8),
//           child: Column(
//             children: <Widget>[
//               Container(
//                 height: 120,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(8),
//                   ),
//                   image: DecorationImage(
//                     image: AssetImage(item.image),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Row(children: [status]),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: <Widget>[
//                         Padding(
//                           padding: EdgeInsets.all(4),
//                           child: Icon(
//                             item.favorite
//                                 ? Icons.favorite
//                                 : Icons.favorite_border,
//                             color: Colors.white,
//                           ),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(8),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       item.subtitle,
//                       style: Theme.of(context)
//                           .textTheme
//                           .caption
//                           .copyWith(color: Theme.of(context).primaryColor),
//                     ),
//                     SizedBox(height: 4),
//                     Text(
//                       item.title,
//                       maxLines: 2,
//                       style: Theme.of(context)
//                           .textTheme
//                           .subtitle2
//                           .copyWith(fontWeight: FontWeight.w600),
//                     ),
//                     SizedBox(height: 8),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: <Widget>[
//                         AppTag(
//                           "${item.rate}",
//                           type: TagType.rateSmall,
//                         ),
//                         SizedBox(width: 4),
//                         RatingBar.builder(
//                           initialRating: item.rate,
//                           minRating: 1,
//                           allowHalfRating: true,
//                           unratedColor: Colors.amber.withAlpha(100),
//                           itemCount: 5,
//                           itemSize: 14.0,
//                           itemBuilder: (context, _) => Icon(
//                             Icons.star,
//                             color: Colors.amber,
//                           ),
//                           ignoreGestures: true,
//                         )
//                       ],
//                     ),
//                     SizedBox(height: 8),
//                     Row(
//                       children: <Widget>[
//                         Icon(
//                           Icons.location_on,
//                           size: 12,
//                           color: Theme.of(context).primaryColor,
//                         ),
//                         SizedBox(width: 4),
//                         Expanded(
//                           child: Text(
//                             item.address,
//                             maxLines: 1,
//                             style: Theme.of(context).textTheme.caption,
//                           ),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         );

//       ///Mode View List
//       case ProductViewType.list:
//         if (item == null) {
//           return AppPlaceholder(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Container(
//                   width: 120,
//                   height: 140,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(8),
//                       bottomLeft: Radius.circular(8),
//                     ),
//                     color: Colors.white,
//                   ),
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       top: 5,
//                       bottom: 5,
//                       left: 10,
//                       right: 10,
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Container(
//                           height: 10,
//                           width: 80,
//                           color: Colors.white,
//                         ),
//                         SizedBox(height: 8),
//                         Container(
//                           height: 10,
//                           width: 100,
//                           color: Colors.white,
//                         ),
//                         SizedBox(height: 8),
//                         Container(
//                           height: 20,
//                           width: 80,
//                           color: Colors.white,
//                         ),
//                         SizedBox(height: 8),
//                         Container(
//                           height: 10,
//                           width: 100,
//                           color: Colors.white,
//                         ),
//                         SizedBox(height: 8),
//                         Container(
//                           height: 10,
//                           width: 80,
//                           color: Colors.white,
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(top: 8),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             children: <Widget>[
//                               Container(
//                                 width: 18,
//                                 height: 18,
//                                 color: Colors.white,
//                               )
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           );
//         }

//         return InkWell(
//           onTap: () {
//             onPressed(item);
//           },
//           borderRadius: BorderRadius.circular(8),
//           child: Stack(
//             children: [
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Container(
//                     width: 120,
//                     height: 140,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(item.image),
//                         fit: BoxFit.cover,
//                       ),
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(8),
//                         bottomLeft: Radius.circular(8),
//                       ),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         status,
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Padding(
//                       padding: EdgeInsets.only(
//                         top: 4,
//                         bottom: 4,
//                         left: 8,
//                         right: 8,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Text(
//                             item.subtitle,
//                             style: Theme.of(context).textTheme.caption.copyWith(
//                                   color: Theme.of(context).primaryColor,
//                                 ),
//                           ),
//                           SizedBox(height: 4),
//                           Text(
//                             item.title,
//                             maxLines: 2,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .subtitle1
//                                 .copyWith(fontWeight: FontWeight.w600),
//                           ),
//                           SizedBox(height: 8),
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: <Widget>[
//                               AppTag(
//                                 "${item.rate}",
//                                 type: TagType.rateSmall,
//                               ),
//                               SizedBox(width: 4),
//                               RatingBar.builder(
//                                 initialRating: item.rate,
//                                 minRating: 1,
//                                 allowHalfRating: true,
//                                 unratedColor: Colors.amber.withAlpha(100),
//                                 itemCount: 5,
//                                 itemSize: 14.0,
//                                 itemBuilder: (context, _) => Icon(
//                                   Icons.star,
//                                   color: Colors.amber,
//                                 ),
//                                 ignoreGestures: true,
//                               )
//                             ],
//                           ),
//                           SizedBox(height: 8),
//                           Row(
//                             children: <Widget>[
//                               Icon(
//                                 Icons.location_on,
//                                 size: 12,
//                                 color: Theme.of(context).primaryColor,
//                               ),
//                               Expanded(
//                                 child: Padding(
//                                   padding: EdgeInsets.only(left: 4, right: 4),
//                                   child: Text(
//                                     item.address,
//                                     maxLines: 1,
//                                     style: Theme.of(context).textTheme.caption,
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//               Positioned(
//                 bottom: 8,
//                 right: 8,
//                 child: Icon(
//                   item.favorite ? Icons.favorite : Icons.favorite_border,
//                   color: Theme.of(context).primaryColor,
//                 ),
//               ),
//             ],
//           ),
//         );

//       ///Mode View Block
//       case ProductViewType.block:
//         if (item == null) {
//           return AppPlaceholder(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Container(
//                   height: 200,
//                   color: Colors.white,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(
//                     left: 16,
//                     right: 16,
//                     top: 8,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Container(
//                         height: 10,
//                         width: 150,
//                         color: Colors.white,
//                       ),
//                       SizedBox(height: 4),
//                       Container(
//                         height: 10,
//                         width: 200,
//                         color: Colors.white,
//                       ),
//                       SizedBox(height: 8),
//                       Container(
//                         height: 10,
//                         width: 150,
//                         color: Colors.white,
//                       ),
//                       SizedBox(height: 4),
//                       Container(
//                         height: 10,
//                         width: 150,
//                         color: Colors.white,
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           );
//         }

//         return InkWell(
//           onTap: () {
//             onPressed(item);
//           },
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Container(
//                 height: 200,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(item.image),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Padding(
//                       padding: EdgeInsets.all(4),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           status,
//                           Icon(
//                             item.favorite
//                                 ? Icons.favorite
//                                 : Icons.favorite_border,
//                             color: Colors.white,
//                           )
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(4),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: <Widget>[
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: <Widget>[
//                               Row(
//                                 children: <Widget>[
//                                   AppTag(
//                                     "${item.rate}",
//                                     type: TagType.rateSmall,
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.only(left: 4),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: <Widget>[
//                                         Padding(
//                                           padding: EdgeInsets.only(left: 4),
//                                           child: Text(
//                                             item.rateText,
//                                             style: Theme.of(context)
//                                                 .textTheme
//                                                 .caption
//                                                 .copyWith(
//                                                   color: Colors.white,
//                                                   fontWeight: FontWeight.w600,
//                                                 ),
//                                           ),
//                                         ),
//                                         RatingBar.builder(
//                                           initialRating: item.rate,
//                                           minRating: 1,
//                                           allowHalfRating: true,
//                                           unratedColor:
//                                               Colors.amber.withAlpha(100),
//                                           itemCount: 5,
//                                           itemSize: 14.0,
//                                           itemBuilder: (context, _) => Icon(
//                                             Icons.star,
//                                             color: Colors.amber,
//                                           ),
//                                           ignoreGestures: true,
//                                         )
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.only(top: 4),
//                                 child: Text(
//                                   "${item.numRate} reviews",
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .caption
//                                       .copyWith(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w600,
//                                       ),
//                                 ),
//                               )
//                             ],
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(
//                   left: 16,
//                   right: 16,
//                   top: 8,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       item.subtitle,
//                       style: Theme.of(context)
//                           .textTheme
//                           .caption
//                           .copyWith(fontWeight: FontWeight.w600),
//                     ),
//                     SizedBox(height: 4),
//                     Text(
//                       item.title,
//                       maxLines: 1,
//                       style: Theme.of(context)
//                           .textTheme
//                           .subtitle2
//                           .copyWith(fontWeight: FontWeight.w600),
//                     ),
//                     SizedBox(height: 8),
//                     Row(
//                       children: <Widget>[
//                         Icon(
//                           Icons.location_on,
//                           size: 12,
//                           color: Theme.of(context).primaryColor,
//                         ),
//                         Expanded(
//                           child: Padding(
//                             padding: EdgeInsets.only(left: 4, right: 4),
//                             child: Text(
//                               item.address,
//                               maxLines: 1,
//                               style: Theme.of(context).textTheme.caption,
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     SizedBox(height: 4),
//                     Row(
//                       children: <Widget>[
//                         Icon(
//                           Icons.phone,
//                           size: 12,
//                           color: Theme.of(context).primaryColor,
//                         ),
//                         Expanded(
//                           child: Padding(
//                             padding: EdgeInsets.only(left: 4, right: 4),
//                             child: Text(
//                               item.phone,
//                               maxLines: 1,
//                               style: Theme.of(context).textTheme.caption,
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         );

//       ///Case View Card large
//       case ProductViewType.cardLarge:
//         if (item == null) {
//           return AppPlaceholder(
//             child: Container(
//               height: 210,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
//           );
//         }

//         return InkWell(
//           borderRadius: BorderRadius.circular(8),
//           onTap: () {
//             onPressed(item);
//           },
//           child: Container(
//             height: 210,
//             padding: EdgeInsets.all(4),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//               image: DecorationImage(
//                 image: AssetImage(item.image),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     status,
//                     Padding(
//                       padding: EdgeInsets.all(4),
//                       child: Icon(
//                         item.favorite ? Icons.favorite : Icons.favorite_border,
//                         color: Colors.white,
//                       ),
//                     )
//                   ],
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(4),
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             item.title,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .subtitle2
//                                 .copyWith(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w600),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 8),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Expanded(
//                             child: Row(
//                               children: <Widget>[
//                                 Icon(
//                                   Icons.location_on,
//                                   size: 12,
//                                   color: Theme.of(context).primaryColor,
//                                 ),
//                                 SizedBox(width: 4),
//                                 Expanded(
//                                   child: Text(
//                                     item.address,
//                                     maxLines: 1,
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .caption
//                                         .copyWith(color: Colors.white),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.star,
//                                 color: Colors.yellow,
//                                 size: 14,
//                               ),
//                               SizedBox(width: 4),
//                               Text(
//                                 '${item.rate}',
//                                 maxLines: 1,
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .caption
//                                     .copyWith(color: Colors.white),
//                               ),
//                               SizedBox(width: 4),
//                               Text(
//                                 Translate.of(context).translate('rating'),
//                                 maxLines: 1,
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .caption
//                                     .copyWith(color: Colors.white),
//                               )
//                             ],
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );

//       ///Case View Card small
//       case ProductViewType.cardSmall:
//         if (item == null) {
//           return AppPlaceholder(
//             child: Container(
//               width: 100,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
//           );
//         }

//         return SizedBox(
//           width: 100,
//           child: InkWell(
//             borderRadius: BorderRadius.circular(8),
//             onTap: () {
//               onPressed(item);
//             },
//             child: Card(
//               elevation: 2,
//               margin: EdgeInsets.all(0),
//               clipBehavior: Clip.antiAliasWithSaveLayer,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Container(
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(item.image),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Padding(
//                       padding: EdgeInsets.all(8),
//                       child: Text(
//                         item.title,
//                         maxLines: 2,
//                         style: Theme.of(context).textTheme.subtitle2.copyWith(
//                               color: Colors.white,
//                               fontWeight: FontWeight.w600,
//                             ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         );

//       default:
//         return Container(width: 160.0);
//     }
//   }
// }
