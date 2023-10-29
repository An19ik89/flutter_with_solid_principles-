import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_solid_principles/principle_name/title/dependencyInversion_title.dart';
import 'package:flutter_solid_principles/principle_name/title/interfaceSegregation_title.dart';
import 'package:flutter_solid_principles/principle_name/title/liskovSubstitution_title.dart';
import 'package:flutter_solid_principles/principle_name/title/openclose_title.dart';
import 'package:flutter_solid_principles/principle_name/show_principle.dart';
import 'package:flutter_solid_principles/principle_name/title/singleResponsibility_title.dart';
import 'package:flutter_solid_principles/route/navigation/dinavigation.dart';
import 'package:flutter_solid_principles/route/navigation/isnavigation.dart';
import 'package:flutter_solid_principles/route/navigation/lsnavigation.dart';
import 'package:flutter_solid_principles/route/navigation/ocnavigation.dart';
import 'package:flutter_solid_principles/route/navigation/srnavigation.dart';
import 'package:flutter_solid_principles/route/routeManager.dart';


void main() {
  runApp(const MyApp());
  // VehicleMileageCalculator vehicleMileageCalculator = VehicleMileageCalculator();
  // vehicleMileageCalculator.showMileage(Car());
  // vehicleMileageCalculator.showMileage(Truck());
}
// class VehicleMileageCalculator{
//  void showMileage(Vehicle vehicle){
//    if (kDebugMode) {
//      print("${vehicle.getVehicleName()}'s Mileage : ${vehicle.getMileage()}");
//    }
//  }
// }
//
// abstract class Vehicle{
//   String getMileage();
//   String getVehicleName();
// }
// class Car extends Vehicle{
//
//   @override
//   String getVehicleName() => "Car";
//
//   @override
//   String getMileage() => "90 km/l";
// }
// class Truck extends Vehicle{
//
//   @override
//   String getVehicleName() => "Truck";
//
//   @override
//   String getMileage() => "40 km/l";
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter With SOLID',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter With SOLID'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  ShowPrincipleName principle = ShowPrincipleName();


  @override
  Widget build(BuildContext context) {
    RouteManager routeManager = RouteManager(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: ()=> routeManager.navigateTo(SRNavigation()), child: principle.showPrincipleName(SingleResponsibility())),
            const SizedBox(height: 10.0,),
            ElevatedButton(
                onPressed: () => routeManager.navigateTo(OCNavigation()), child: principle.showPrincipleName(OpenClose())),
            const SizedBox(height: 10.0,),
            ElevatedButton(
                onPressed: ()=>routeManager.navigateTo(LSNavigation()), child: principle.showPrincipleName(LiskovSubstitution())),
            const SizedBox(height: 10.0,),
            ElevatedButton(
                onPressed: ()=>routeManager.navigateTo(ISNavigation()), child: principle.showPrincipleName(InterfaceSegregation())),
            const SizedBox(height: 10.0,),
            ElevatedButton(
                onPressed: ()=>routeManager.navigateTo(DINavigation()), child: principle.showPrincipleName(DependencyInversion())),
            const SizedBox(height: 10.0,),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
