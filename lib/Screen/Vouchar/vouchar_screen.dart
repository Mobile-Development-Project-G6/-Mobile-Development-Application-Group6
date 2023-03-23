import 'package:flutter/material.dart';

class VoucharScreen extends StatelessWidget {
  static const String routeName = '/Vouchar';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => VoucharScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  const VoucharScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Vouchar')),
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
