import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: Colors.green[700],
          ),
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Maps Sample App'),
              elevation: 2,
            ),
            body: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 11.0,
              ),
            ),
          )),
      const SizedBox(height: 16),
      SizedBox(
          width: 500,
          child: OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back')))
    ]);
  }
}
