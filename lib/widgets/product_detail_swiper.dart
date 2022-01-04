// import 'package:flutter/material.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:listar_flutter/models/model.dart';
// import 'package:listar_flutter/widgets/app_placeholder.dart';

// class ProductDetailSwipe extends StatelessWidget {
//   ProductDetailSwipe({
//     Key key,
//     @required this.images,
//     this.alignment,
//   }) : super(key: key);
//   final Alignment alignment;
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
//           alignment: alignment ?? Alignment(0.0, 1.0),
//           builder: DotSwiperPaginationBuilder(
//             activeColor: Theme.of(context).primaryColor,
//             color: Colors.white,
//           ),
//         ),
//       );
//     }
//     return AppPlaceholder(
//       child: Container(
//         color: Colors.white,
//       ),
//     );
//   }
// }
