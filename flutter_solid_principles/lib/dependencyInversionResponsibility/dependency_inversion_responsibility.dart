import 'package:flutter/material.dart';
import 'package:flutter_solid_principles/dependencyInversionResponsibility/bank.dart';
import 'package:flutter_solid_principles/dependencyInversionResponsibility/customer.dart';

class DependencyInversionResponsibilityPage extends StatefulWidget {
  const DependencyInversionResponsibilityPage({super.key});

  @override
  State<DependencyInversionResponsibilityPage> createState() =>
      _DependencyInversionResponsibilityPageState();
}

class _DependencyInversionResponsibilityPageState extends State<DependencyInversionResponsibilityPage> {

  Bank bank = Bank();
  Customer customer = Customer();

  @override
  Widget build(BuildContext context) {
    bank.atmOperation();
    customer.atmOperation();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const FittedBox(fit: BoxFit.contain,child: Text("Dependency Inversion Principle")),
        ),
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("The Dependency Inversion Principle (DIP) states that high level modules should not depend on low level modules; both should depend on abstractions. Abstractions should not depend on details/implementations. Details should depend upon abstractions"),
                const SizedBox(height: 10.0,),
                const Text("Let's use a real-life example before writing some code.\n\nImagine taking a one minute walk to the bank every time you had to withdraw money over the counter. It then takes an extra thirty seconds for you get your money. This is quite efficient because very little time is wasted. We'll assume you're the high-level module and the bank is the low-level module.\n\nBut what happens when the bank is closed for a holiday or an emergency? You have absolutely no access to your funds. If you move further away from the bank, it becomes a bigger problem because you'd spend more time getting there.\n\nTo solve this problem, an interface is introduced – an automated teller machine (ATM) or a mobile banking app. Even though you have a relationship with the bank, you are no longer required to interact with them physically to be served.\n\nThis example is similar to the dependency inversion principle. We should make our classes rely on properties in our interfaces instead of relying on each other."),
                const SizedBox(height: 10.0,),
                const Text("The implications of violating this principle would result in a rigid system where testing blocks of code independently would be very difficult, reusability of code would be near impossible, and the addition or removal of code would lead to further complexity of the system and introduce bugs.\n\nHere is a code example that violates this principle:",style: TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/dependency_inversion_first.png"),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/dependency_inversion_second.png"),
                const SizedBox(height: 10.0,),
                const Text("From the code examples above, we can see that the Customer class imports and relies on a method in the Bank class. This reliance on a low-level class is against the DIP.\n\nLike in our real-life example, we'll solve this problem by introducing an interface that both classes can interact with.\n\nHere's the ATM interface that our Bank and Customer class will interact with:"),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/dependency_inversion_solution_first.png"),
                const SizedBox(height: 10.0,),
                const Text("Here's the Bank class which uses a method in the ATM interface to add money to the ATM:"),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/dependency_inversion_solution_second.png"),
                const SizedBox(height: 10.0,),
                const Text("Lastly, the Customer class which uses the same interface to withdraw money:"),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/dependency_inversion_solution_third.png"),
                const SizedBox(height: 10.0,),
              ],
            ),
          ),
        ));
  }
}
