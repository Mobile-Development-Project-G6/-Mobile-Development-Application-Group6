import 'package:flutter/material.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  static const String routeName = '/RestaurantDetails';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => RestaurantDetailsScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  const RestaurantDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('CheckOut')),
        body: Center(
          child: ElevatedButton(
            child: Text('Home Screen'),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ));
  }
}
