import 'package:flutter/material.dart';
import 'package:flutter_solid_principles/interfaceSegregationResponsibility/interface_segregation_responsibility.dart';
import 'package:flutter_solid_principles/route/routing_abstract.dart';


class ISNavigation extends Routing{
  @override
  navigation(context) =>   Navigator.push(context, MaterialPageRoute(builder: (context) => const InterfaceSegregationResponsibilityPage()));
}