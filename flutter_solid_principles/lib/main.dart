import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_solid_principles/principle_name/dependencyInversion_title.dart';
import 'package:flutter_solid_principles/principle_name/interfaceSegregation_title.dart';
import 'package:flutter_solid_principles/principle_name/liskovSubstitution_title.dart';
import 'package:flutter_solid_principles/principle_name/openclose_title.dart';
import 'package:flutter_solid_principles/principle_name/show_principle.dart';
import 'package:flutter_solid_principles/principle_name/singleResponsibility_title.dart';


void main() {
  runApp(const MyApp());
  // VehicleMileageCalculator vehicleMileageCalculator = VehicleMileageCalculator();
  // vehicleMileageCalculator.showMileage(Car());
  // vehicleMileageCalculator.showMileage(Truck());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
                onPressed: (){

                }, child: principle.showPrinciple(SingleResponsibility())),
            const SizedBox(height: 10.0,),
            ElevatedButton(
                onPressed: (){

                }, child: principle.showPrinciple(OpenClose())),
            const SizedBox(height: 10.0,),
            ElevatedButton(
                onPressed: (){

                }, child: principle.showPrinciple(LiskovSubstitution())),
            const SizedBox(height: 10.0,),
            ElevatedButton(
                onPressed: (){

                }, child: principle.showPrinciple(InterfaceSegregation())),
            const SizedBox(height: 10.0,),
            ElevatedButton(
                onPressed: (){

                }, child: principle.showPrinciple(DependencyInversion())),
            const SizedBox(height: 10.0,),

          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
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