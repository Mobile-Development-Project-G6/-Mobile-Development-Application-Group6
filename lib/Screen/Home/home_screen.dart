import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => HomeScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Center(
          child: ElevatedButton(
            child: Text('Vouchar Screen'),
            onPressed: () {
              Navigator.pushNamed(context, '/Vouchar');
            },
          ),
        ));
  }
}
