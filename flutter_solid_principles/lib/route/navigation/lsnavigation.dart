import 'package:flutter/material.dart';
import 'package:flutter_solid_principles/liskovSubstitutionResponsibility/liskov_substitution_responsibility.dart';
import 'package:flutter_solid_principles/route/routing_abstract.dart';


class LSNavigation extends Routing{
  @override
  navigation(context) =>   Navigator.push(context, MaterialPageRoute(builder: (context) => const LiskovSubstitutionResponsibilityPage()));
}