import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:cloud_firestore/cloud_firestore.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  @override
  State<Homescreen> createState() => _HomescreenState();
}
//AIzaSyBCScZATHmer9WFzF__kZheQMIUJ7PIrvY
class _HomescreenState extends State<Homescreen> {

  
  BitmapDescriptor markerIcon=BitmapDescriptor.defaultMarker;


  List<Marker> _markers =[];
   List<Marker> _temp =[];
  // List<Marker> _list =[
  //   Marker(
  //           markerId: MarkerId('1'),
  //           position: LatLng(21.1702,72.8311),
  //           // icon: markerIcon,
  //           infoWindow: InfoWindow(
  //               title: 'First  marker'
  //           )
  //       ),
  //       Marker(
  //           markerId: MarkerId('2'),
  //           position: LatLng(20.9467, 72.9520),
  //           infoWindow: InfoWindow(
  //               title: 'Second marker'
  //           )
  //       ),
  //       Marker(
  //           markerId: MarkerId('3'),
  //           position: LatLng(21.1255, 73.1122),
  //           infoWindow: InfoWindow(
  //               title: 'Third marker'
  //           )
  //       ),
  // ];


  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  customicon(){
     BitmapDescriptor.fromAssetImage(
       const ImageConfiguration(size: Size(48, 48)), 'img/images.png')
        .then((markerIcon) async {

          await FirebaseFirestore.instance.collection("Googlemap").get().then((documents) async{

              await documents.docs.map((document){
                  _temp.add(
                          Marker(
                        markerId: MarkerId('1'),
                        position: LatLng(double.parse(document["lattitude"]),double.parse(document["longitude"])),
                        // icon: markerIcon,
                        infoWindow: InfoWindow(
                            title: document["name"].toString()
                        )
                    ) 
                ); 

              });

          }).then((value){
            setState(() {
            _markers=_temp;
            });
          });
           
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     customicon();
    // _markers.addAll(_list);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Map"),
      ),
      body: (_markers!=null)?GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(21.1702,72.8311),
          zoom: 14.4746,
        ),
        markers: 
         Set<Marker>.of(_markers) ,
        onMapCreated: (GoogleMapController controller)
        { 
          
        },
      ):Center(child: CircularProgressIndicator()),
    );
  }
 
}