// import 'package:flutter/material.dart';
// import 'package:listar_flutter/models/model.dart';
// import 'package:listar_flutter/utils/utils.dart';

// enum PageType { map, list }

// class AppNavBar extends StatelessWidget {
//   final PageType pageStyle;
//   final SortModel currentSort;
//   final VoidCallback onChangeSort;
//   final Function(PageType) onChangeView;
//   final VoidCallback onFilter;
//   final IconData iconModeView;

//   AppNavBar({
//     Key key,
//     this.pageStyle = PageType.list,
//     this.currentSort,
//     this.onChangeSort,
//     this.iconModeView,
//     this.onChangeView,
//     this.onFilter,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Widget sort = Container();
//     if (currentSort != null) {
//       sort = Row(
//         children: <Widget>[
//           IconButton(
//             icon: Icon(Icons.swap_vert),
//             onPressed: onChangeSort,
//           ),
//           Text(
//             Translate.of(context).translate(currentSort.name),
//             style: Theme.of(context).textTheme.subtitle2,
//           )
//         ],
//       );
//     }
//     return SafeArea(
//       top: false,
//       bottom: false,
//       child: Container(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             sort,
//             Row(
//               children: <Widget>[
//                 Row(
//                   children: <Widget>[
//                     IconButton(
//                       icon: Icon(iconModeView),
//                       onPressed: () {
//                         onChangeView(pageStyle);
//                       },
//                     ),
//                     Container(
//                       height: 24,
//                       child: VerticalDivider(),
//                     ),
//                   ],
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.track_changes),
//                   onPressed: onFilter,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(right: 16, left: 16),
//                   child: Text(
//                     Translate.of(context).translate('filter'),
//                     style: Theme.of(context).textTheme.subtitle2,
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
