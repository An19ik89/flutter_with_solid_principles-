import 'package:flutter/material.dart';
import 'package:flutter_solid_principles/route/routing_abstract.dart';


class RouteManager{

  BuildContext context;

  RouteManager(this.context);

  void navigateTo(Routing routing){
    routing.navigation(context);
  }
}