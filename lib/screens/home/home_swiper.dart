// import 'package:flutter/material.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
// import '../../models/model.dart';
// // import '.../../widgets/app_placeholder.dart';

// class HomeSwipe extends StatelessWidget {
//   HomeSwipe({
//     Key? key,
//     required this.images,
//     this.height,
//   }) : super(key: key);
//   final double? height;
//   final List<ImageModel> images;

//   @override
//   Widget build(BuildContext context) {
//     if (images != null && images.length > 0) {
//       return Swiper(
//         itemBuilder: (BuildContext context, int index) {
//           return Image.asset(
//             images[index].image,
//             fit: BoxFit.cover,
//           );
//         },
//         autoplayDelay: 3000,
//         autoplayDisableOnInteraction: false,
//         autoplay: true,
//         itemCount: images.length,
//         pagination: SwiperPagination(
//           alignment: Alignment(0.0, 0.4),
//           builder: DotSwiperPaginationBuilder(
//             activeColor: Theme.of(context).primaryColor,
//             color: Colors.white,
//           ),
//         ),
//       );
//     }
//     // return AppPlaceholder(
//     //   child: Container(
//     //     color: Colors.white,
//     //   ),
//     // );
//   }
// }
