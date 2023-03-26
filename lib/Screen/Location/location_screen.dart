import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_food_delivery_app/Blocs/Geolocation/geolocation_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../Widgets/location_search_box.dart';

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
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: BlocBuilder<GeolocationBloc, GeolocationState>(
              builder: (context, state) {
                if (state is GeolocationLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is GeolocationLoaded) {
                  return GoogleMap(
                    myLocationButtonEnabled: true,
                    initialCameraPosition: CameraPosition(
                        target: LatLng(
                            state.position.latitude, state.position.longitude),
                        zoom: 10),
                  );
                } else {
                  return Text('Something went wrong');
                }
              },
            ),
          ),
          Positioned(
            top: 150,
            left: 20,
            right: 20,
            child: Container(
              height: 100,
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/logo.svg',
                    height: 50,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Expanded(child: LocationSearchBox()),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor),
                child: Text('save'),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
