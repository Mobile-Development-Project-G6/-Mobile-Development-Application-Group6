import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  static const String routeName = '/Filter';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => FilterScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Filter')),
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
