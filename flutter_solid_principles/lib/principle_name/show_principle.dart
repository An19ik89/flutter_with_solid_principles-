import 'package:flutter/material.dart';
import 'package:flutter_solid_principles/principle_name/pricples.dart';


class ShowPrincipleName{
  showPrinciple(Principles principles){
    return Text(principles.getPrinciplesName());
  }
}