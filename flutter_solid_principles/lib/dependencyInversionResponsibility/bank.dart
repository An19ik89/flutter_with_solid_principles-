import 'package:flutter_solid_principles/dependencyInversionResponsibility/atm.dart';

class Bank implements ATM{

  @override
  void atmOperation() {
    print("Bank load the ATM with money");
  }

}