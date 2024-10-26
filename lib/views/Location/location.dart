import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kgoogleplex = CameraPosition(
      target: LatLng(24.85220396918803, 66.99308181180072), zoom: 14);
  List<Marker> _marker = [];
  final List<Marker> _list = [
    const Marker(
        markerId: MarkerId("1"),
        position: LatLng(24.85220396918803, 66.99308181180072),
        infoWindow: InfoWindow(title: 'My current location')),
    //can make multiple markers
    const Marker(
        markerId: MarkerId("2"),
        position: LatLng(24.84895231791864, 66.9959715616171),
        infoWindow: InfoWindow(title: 'Al-Rehman Biryani Tower')),

    const Marker(
        markerId: MarkerId("2"),
        position: LatLng(34.70232919429821, 135.50387060918914),
        infoWindow: InfoWindow(title: 'Tokyo Japan')),
  ];

  @override
  void initState() {
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
            initialCameraPosition: _kgoogleplex,
            markers: Set<Marker>.of(_marker),
            mapType: MapType.hybrid,
            // compassEnabled: true,
            myLocationEnabled: true,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          GoogleMapController controller = await _controller.future;
          controller.animateCamera(CameraUpdate.newCameraPosition(
              CameraPosition(
                  target: LatLng(24.85220396918803, 66.99308181180072),
                  zoom: 14)));
          setState(() {});
        },
        child: Icon(Icons.location_disabled_outlined),
      ),
    );
  }
}
