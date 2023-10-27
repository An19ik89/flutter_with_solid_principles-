import 'package:flutter/material.dart';
import 'package:flutter_solid_principles/openCloseResponsibility/open_close_responsibility.dart';
import 'package:flutter_solid_principles/route/routing_abstract.dart';

class OCNavigation extends Routing{
  @override
  navigation(context) =>   Navigator.push(context, MaterialPageRoute(builder: (context) => const OpenCloseResponsibilityPage()));
}