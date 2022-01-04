import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../models/model.dart';
import '../screens/screen.dart';

class Routes {
  static const String signIn = "/signIn";
  // static const String signUp = "/signUp";
  static const String forgotPassword = "/forgotPassword";
  static const String home = "/home";

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signIn:
        return MaterialPageRoute(
          builder: (context) {
            return const SignIn();
          },
        );

      // case signUp:
      //   return MaterialPageRoute(
      //     builder: (context) {
      //       return SignUp();
      //     },
      //   );

      // case forgotPassword:
      //   return MaterialPageRoute(
      //     builder: (context) {
      //       return ForgotPassword();
      //     },
      //   );

      // case productDetail:
      //   return MaterialPageRoute(
      //     builder: (context) {
      //       switch (AppBloc.businessCubit.state) {
      //         case BusinessState.realEstate:
      //           final item = settings.arguments as ProductRealEstateModel;
      //           return ProductDetailRealEstate(id: item.id);

      //         case BusinessState.event:
      //           final item = settings.arguments as ProductEventModel;
      //           return ProductDetailEvent(id: item.id);

      //         case BusinessState.food:
      //           final item = settings.arguments as ProductFoodModel;
      //           return ProductDetailFood(id: item.id);

      //         default:
      //           final item = settings.arguments as ProductModel;
      //           if (item.viewStyle == DetailViewStyle.tab) {
      //             return ProductDetailTab(id: item.id);
      //           }
      //           return ProductDetail(id: item.id);
      //       }
      //     },
      //   );

      // case listProduct:
      //   final category = settings.arguments;
      //   return MaterialPageRoute(
      //     builder: (context) {
      //       switch (AppBloc.businessCubit.state) {
      //         case BusinessState.realEstate:
      //           return ListProductRealEstate(title: category);
      //         case BusinessState.event:
      //           return ListProductEvent(title: category);
      //         case BusinessState.food:
      //           return ListProductFood(title: category);
      //         default:
      //           return ListProduct(title: category);
      //       }
      //     },
      //   );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Not Found"),
              ),
              body: Center(
                child: Text('No path for ${settings.name}'),
              ),
            );
          },
        );
    }
  }

  ///Singleton factory
  static final Routes _instance = Routes._internal();

  factory Routes() {
    return _instance;
  }

  Routes._internal();
}
