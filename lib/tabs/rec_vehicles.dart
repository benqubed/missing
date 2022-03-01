import 'package:flutter/material.dart';
import 'package:missing/widgets/rec_vehicles.dart';

class RecVehicles extends StatefulWidget {
  const RecVehicles({Key? key}) : super(key: key);

  @override
  State<RecVehicles> createState() => _RecVehiclesState();
}

class _RecVehiclesState extends State<RecVehicles> {
  final List<RecVehicleCard> _vehicleList = [
    const RecVehicleCard(
      makeName: "Acura",
      year: 2014,
      model: "MDX",
      vin: "5FJUEU736YDH837243456",
      vehicleStock: 501264,
      price: 73915,
      mileage: 78000,
      exteriorColor: "White",
      days: 45,
      status: "Great",
    ),
    const RecVehicleCard(
      makeName: "Toyota",
      year: 2014,
      model: "Camry - XLE",
      vin: "5FJUEU736YDH837243456",
      vehicleStock: 501264,
      price: 12000,
      mileage: 78000,
      exteriorColor: "White",
      days: 45,
      status: "Great",
    ),
    const RecVehicleCard(
      makeName: "Chevrolet",
      year: 2019,
      model: "Equinox LTE",
      vin: "5FJUEU736YDH837243456",
      vehicleStock: 501264,
      price: 12000,
      mileage: 78000,
      exteriorColor: "White",
      days: 45,
      status: "Good",
    ),
    const RecVehicleCard(
      makeName: "Honda",
      year: 2020,
      model: "CR-V",
      vin: "5FJUEU736YDH837243456",
      vehicleStock: 501264,
      price: 12000,
      mileage: 78000,
      exteriorColor: "White",
      days: 45,
      status: "Good",
    ),
    const RecVehicleCard(
      makeName: "Toyota",
      year: 2018,
      model: "Coroll",
      vin: "5FJUEU736YDH837243456",
      vehicleStock: 501264,
      price: 12000,
      mileage: 78000,
      exteriorColor: "White",
      days: 45,
      status: "Avg.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [..._vehicleList],
      ),
    );
  }
}
