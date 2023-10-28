import 'package:flutter/material.dart';
import 'package:flutter_solid_principles/principle_name/pricples_abstract.dart';


class ShowPrincipleName{
  showPrincipleName(Principles principles){
    return Text(principles.getPrinciplesName());
  }
}