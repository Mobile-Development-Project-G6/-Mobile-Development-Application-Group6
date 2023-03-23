import 'package:flutter/material.dart';

class RestaurantListScreen extends StatelessWidget {
  static const String routeName = '/RestaurantList';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => RestaurantListScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  const RestaurantListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Restaurant List')),
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
