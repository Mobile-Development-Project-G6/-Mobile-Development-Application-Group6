import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_food_delivery_app/Blocs/Geolocation/geolocation_bloc.dart';
import 'package:flutter_food_delivery_app/Repositories/Geolocation/geolocation_repository.dart';

import 'Config/app_router.dart';
//import 'Screen/Home/home_screen.dart';
import 'Screen/Location/location_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider<GeolocationRepository>(
            create: (_) => GeolocationRepository(),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (context) => GeolocationBloc(
                    geolocationRepository:
                        context.read<GeolocationRepository>())
                  ..add(LoadGeolocation()))
          ],
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            onGenerateRoute: AppRouter.onGenerateRoute,
            initialRoute: LocationScreen.routeName,
          ),
        ));
  }
}
