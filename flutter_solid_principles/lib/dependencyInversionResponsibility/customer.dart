import 'package:flutter_solid_principles/dependencyInversionResponsibility/atm.dart';

class Customer implements ATM{

  @override
  void atmOperation() {
    print("Customer put money");
  }


}