import 'package:flutter/material.dart';
import 'package:flutter_solid_principles/route/routing_abstract.dart';
import 'package:flutter_solid_principles/singleresponsibility/single_responsibility.dart';

class SRNavigation extends Routing{
  @override
  navigation(context) =>   Navigator.push(context, MaterialPageRoute(builder: (context) => const SingleResponsibilityPage()));
}