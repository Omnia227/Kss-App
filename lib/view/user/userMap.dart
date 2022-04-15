import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:location/location.dart' as lct;

import '../../core/const.dart';
import '../../core/widgets/small_buttom.dart';

class UserMapScreen extends StatefulWidget {
  @override
  _UserMapScreenState createState() => _UserMapScreenState();
}

class _UserMapScreenState extends State<UserMapScreen> {
  LatLng currentLocation = LatLng(-2.131910, -79.940287);
  GoogleMapController? _mapController;
  lct.Location? location;

  @override
  void initState() {
    requestPerms();
    super.initState();
  }

  getLocation() async {
    var currentLocation = await location!.getLocation();
    locationUpdate(currentLocation);
  }

  locationUpdate(currentLocation) {
    if (currentLocation != null) {
      setState(() {
        this.currentLocation =
            LatLng(currentLocation.latitude, currentLocation.longitude);
        this._mapController!.animateCamera(CameraUpdate.newCameraPosition(
              CameraPosition(target: this.currentLocation, zoom: 14),
            ));
        _createMarker();
      });
    }
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  changedLocation() {
    location!.onLocationChanged.listen((lct.LocationData cLoc) {
      // ignore: unnecessary_null_comparison
      if (cLoc != null) locationUpdate(cLoc);
    });
  }

// Pedir permiso de Ubicacion
  requestPerms() async {
    Map<Permission, PermissionStatus> statuses =
        await [Permission.locationAlways].request();

    var status = statuses[Permission.locationAlways];
    if (status == PermissionStatus.denied) {
      requestPerms();
    } else {
      gpsAnable();
    }
  }

//Activar GPS
  gpsAnable() async {
    location = lct.Location();
    bool statusResult = await location!.requestService();

    if (!statusResult) {
      gpsAnable();
    } else {
      getLocation();
      changedLocation();
    }
  }

//crear Marker
  Set<Marker> _createMarker() {
    var marker = Set<Marker>();

    marker.add(Marker(
      markerId: MarkerId("MarkerCurrent"),
      position: currentLocation,
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(
        title: "الموقع ",
        snippet:
            "Lat ${currentLocation.latitude} - Lng ${currentLocation.longitude} ",
      ),
      draggable: true,
      onDragEnd: onDragEnd,
    ));

    return marker;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: currentLocation,
              zoom: 14.0,
            ),
            mapType: MapType.normal,
            myLocationEnabled: true,
            zoomControlsEnabled: false,
            myLocationButtonEnabled: false,
            markers: _createMarker(),
            onMapCreated: _onMapCreated,
          ),
          Positioned(
            bottom: 45,
            left: 90,
            right: 90,
            child: Padding(
                padding: const EdgeInsets.all(3),
                child: SmallButtom(
                  press: () {
                    //  Navigator.of(context).pushNamed('Examination2 Data');
                    // add code save position
                  },
                  text: "تأكيد",
                )),
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 8, 30),
        child: FloatingActionButton(
          onPressed: getLocation,
          backgroundColor: Primarycolor,
          child: Icon(
            Icons.place,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  onDragEnd(LatLng position) {
    print("nueva posicion $position");
  }
}
