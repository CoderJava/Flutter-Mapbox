import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  MapboxMapController _mapboxMapController;

  void _onMapCreated(MapboxMapController controller) {
    _mapboxMapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Mapbox",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: MapboxMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: const CameraPosition(
              target: LatLng(-6.489540, 106.771240),
              zoom: 11.0
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    /*_mapboxMapController.removeListener(_onMapChanged);*/
    super.dispose();
  }

  void _onMapChanged() {
    setState(() {
      // TODO: do something in here
    });
  }
}
