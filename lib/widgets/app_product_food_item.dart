// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:listar_flutter/models/model.dart';
// import 'package:listar_flutter/utils/utils.dart';
// import 'package:listar_flutter/widgets/widget.dart';

// class AppProductFoodItem extends StatelessWidget {
//   AppProductFoodItem({
//     Key key,
//     this.item,
//     this.onPressed,
//     this.type,
//   }) : super(key: key);

//   final ProductFoodModel item;
//   final ProductViewType type;
//   final Function(ProductFoodModel) onPressed;
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
//                 height: 80,
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
//                         item.title,
//                         maxLines: 1,
//                         style: Theme.of(context)
//                             .textTheme
//                             .subtitle2
//                             .copyWith(fontWeight: FontWeight.w600),
//                       ),
//                       Padding(padding: EdgeInsets.only(top: 5)),
//                       Text(
//                         item.subtitle,
//                         style: Theme.of(context)
//                             .textTheme
//                             .caption
//                             .copyWith(fontWeight: FontWeight.w600),
//                       ),
//                       Padding(padding: EdgeInsets.only(top: 10)),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: <Widget>[
//                           AppTag(
//                             "${item.rate}",
//                             type: TagType.rateSmall,
//                           ),
//                           Padding(padding: EdgeInsets.only(left: 5)),
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
//                       item.title,
//                       maxLines: 2,
//                       style: Theme.of(context)
//                           .textTheme
//                           .subtitle2
//                           .copyWith(fontWeight: FontWeight.w600),
//                     ),
//                     SizedBox(height: 8),
//                     Row(
//                       children: <Widget>[
//                         Text(
//                           item.status,
//                           style: Theme.of(context)
//                               .textTheme
//                               .caption
//                               .copyWith(color: Theme.of(context).accentColor),
//                         ),
//                         Container(
//                           margin: EdgeInsets.symmetric(horizontal: 8),
//                           width: 4,
//                           height: 4,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Theme.of(context).dividerColor,
//                           ),
//                         ),
//                         Text(
//                           item.distance,
//                           style: Theme.of(context).textTheme.caption,
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 8),
//                     Row(
//                       children: <Widget>[
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: 4,
//                             vertical: 2,
//                           ),
//                           decoration: BoxDecoration(
//                             color:
//                                 Theme.of(context).primaryColor.withOpacity(.8),
//                             borderRadius: BorderRadius.circular(4),
//                           ),
//                           child: Row(
//                             children: [
//                               Icon(
//                                 Icons.star,
//                                 color: Colors.white,
//                                 size: 12,
//                               ),
//                               SizedBox(width: 4),
//                               Text(
//                                 '${item.rate}',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .caption
//                                     .copyWith(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w600),
//                               )
//                             ],
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.symmetric(horizontal: 8),
//                           width: 4,
//                           height: 4,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Theme.of(context).dividerColor,
//                           ),
//                         ),
//                         Text(
//                           item.promotion,
//                           style: Theme.of(context)
//                               .textTheme
//                               .caption
//                               .copyWith(color: Theme.of(context).primaryColor),
//                         ),
//                       ],
//                     ),
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
//                             item.title,
//                             maxLines: 2,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .subtitle1
//                                 .copyWith(fontWeight: FontWeight.w600),
//                           ),
//                           SizedBox(height: 4),
//                           Text(
//                             item.subtitle,
//                             maxLines: 2,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .caption
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
//               height: 135,
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
//             height: 135,
//             padding: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(item.image),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   item.title,
//                   style: Theme.of(context).textTheme.headline6.copyWith(
//                       fontWeight: FontWeight.w600, color: Colors.white),
//                 ),
//                 SizedBox(height: 8),
//                 Row(
//                   children: [
//                     Container(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 4,
//                         vertical: 2,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Theme.of(context).primaryColor,
//                         borderRadius: BorderRadius.circular(4),
//                       ),
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.star,
//                             color: Colors.white,
//                             size: 12,
//                           ),
//                           SizedBox(width: 4),
//                           Text(
//                             '${item.rate}',
//                             style: Theme.of(context).textTheme.caption.copyWith(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w600),
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(width: 8),
//                     Text(
//                       '${item.numRate} ${Translate.of(context).translate('review')}',
//                       style: Theme.of(context).textTheme.caption.copyWith(
//                           color: Colors.white, fontWeight: FontWeight.w600),
//                     )
//                   ],
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
