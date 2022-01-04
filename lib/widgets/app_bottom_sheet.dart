// import 'package:flutter/material.dart';
// import 'package:listar_flutter/models/model.dart';
// import 'package:listar_flutter/utils/utils.dart';
// import 'package:listar_flutter/widgets/widget.dart';

// class AppBottomSheet extends StatelessWidget {
//   final SortModel selected;
//   final List<SortModel> option;
//   final Function(SortModel) onPressed;

//   AppBottomSheet({
//     Key key,
//     this.selected,
//     this.option,
//     this.onPressed,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: IntrinsicHeight(
//         child: Container(
//           padding: EdgeInsets.only(left: 16, right: 16),
//           child: Column(
//             children: [
//               Container(
//                 margin: EdgeInsets.all(8),
//                 width: 40,
//                 height: 4,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(8),
//                   ),
//                   color: Theme.of(context).dividerColor,
//                 ),
//               ),
//               Expanded(
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: option.map((item) {
//                       final checked = item == selected;
//                       Widget trailing = Container();
//                       if (checked) {
//                         trailing = Icon(
//                           Icons.check,
//                           color: Theme.of(context).primaryColor,
//                         );
//                       }
//                       return Column(
//                         children: [
//                           AppListTitle(
//                             title: Translate.of(context).translate(item.name),
//                             trailing: trailing,
//                             onPressed: () {
//                               onPressed(item);
//                             },
//                           ),
//                           Divider(),
//                         ],
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
