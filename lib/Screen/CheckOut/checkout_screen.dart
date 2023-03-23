import 'package:flutter/material.dart';

class CheckOutScreen extends StatelessWidget {
  static const String routeName = '/CheckOut';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => CheckOutScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  const CheckOutScreen({super.key});

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
