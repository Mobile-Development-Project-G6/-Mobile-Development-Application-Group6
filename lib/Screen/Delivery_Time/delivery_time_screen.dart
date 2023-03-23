import 'package:flutter/material.dart';

class DeliveryTimeScreen extends StatelessWidget {
  static const String routeName = '/DeliveryTime';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => DeliveryTimeScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  const DeliveryTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Restaurant Details')),
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
