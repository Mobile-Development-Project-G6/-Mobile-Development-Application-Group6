import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  static const String routeName = '/Location';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => LocationScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Location')),
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
