import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/Screen/Restaurant_Listing/restauant_listing_screen.dart';

import '../Screen/Basket/basket_screen.dart';
import '../Screen/CheckOut/checkout_screen.dart';
import '../Screen/Delivery_Time/delivery_time_screen.dart';
import '../Screen/Filter/filter_screen.dart';
import '../Screen/Home/home_screen.dart';
import '../Screen/Location/location_screen.dart';
import '../Screen/Restaurant_Details/restaurant_details_screen.dart';
import '../Screen/Vouchar/vouchar_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The Route is: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case BasketScreen.routeName:
        return BasketScreen.route();
      case CheckOutScreen.routeName:
        return CheckOutScreen.route();
      case FilterScreen.routeName:
        return FilterScreen.route();
      case DeliveryTimeScreen.routeName:
        return DeliveryTimeScreen.route();
      case RestaurantDetailsScreen.routeName:
        return RestaurantDetailsScreen.route();
      case RestaurantListScreen.routeName:
        return RestaurantListScreen.route();
      case VoucharScreen.routeName:
        return VoucharScreen.route();
        break;

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(appBar: AppBar(title: Text('error'))),
      settings: RouteSettings(name: '/error'),
    );
  }
}
