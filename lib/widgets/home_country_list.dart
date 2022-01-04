// import 'package:flutter/material.dart';
// import 'package:listar_flutter/models/model.dart';
// import 'package:listar_flutter/widgets/widget.dart';

// class HomeCountryList extends StatelessWidget {
//   final List<CountryModel> country;
//   final CountryModel countrySelected;
//   final Function(CountryModel) onSelect;

//   HomeCountryList({
//     Key key,
//     this.country,
//     this.countrySelected,
//     this.onSelect,
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
//                 height: 3,
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
//                     children: country.map((item) {
//                       final checked = item == countrySelected;
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
//                             title: item.name,
//                             leading: Row(
//                               children: [
//                                 Container(
//                                   width: 16,
//                                   height: 16,
//                                   decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     image: DecorationImage(
//                                       image: AssetImage(item.image),
//                                       fit: BoxFit.cover,
//                                     ),
//                                     border: Border.all(
//                                       color: Theme.of(context).dividerColor,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(width: 8),
//                               ],
//                             ),
//                             trailing: trailing,
//                             textStyle: Theme.of(context).textTheme.button,
//                             onPressed: () {
//                               onSelect(item);
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
