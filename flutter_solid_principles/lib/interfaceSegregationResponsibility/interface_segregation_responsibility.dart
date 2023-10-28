import 'package:flutter/material.dart';

class InterfaceSegregationResponsibilityPage extends StatefulWidget {
  const InterfaceSegregationResponsibilityPage({super.key});

  @override
  State<InterfaceSegregationResponsibilityPage> createState() =>
      _InterfaceSegregationResponsibilityPageState();
}

class _InterfaceSegregationResponsibilityPageState extends State<InterfaceSegregationResponsibilityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const FittedBox(fit: BoxFit.contain,child: Text("Interface Segregation Principle")),
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
                const SizedBox(height: 10.0,),
                const Text("The interface segregation principle states that the interface of a program should be split in a way that the user/client would only have access to the necessary methods related to their needs.\nTo understand this better, we'll first look at an example that violates the ISP:"),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/interface_segregation_first.png"),
                const SizedBox(height: 10.0,),
                const Text("We've created an interface called Teacher which has various subjects as its methods. Let's extend this interface to our first teacher."),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/interface_segregation_second.png"),
                const SizedBox(height: 10.0,),
                const Text("From the code above, you can tell that Jane is an English teacher who has no business with the other subjects. But these other methods are extended by default with the Teacher interface.\n\nDo not confuse the Liskov substitution principle and the interface segregation principle. They may seem similar but they are not entirely the same.\n\nLiskov substitution principle gives us the idea that when a new class has the need to inherit an existing class, it should do so because this new class has a need for the methods the existing class has.\n\nOn the other hand, the interface segregation principle makes us understand that it is unnecessary and unreasonable to create an interface with a lot of methods as some of these methods may be irrelevant to the needs of a particular user when extended.\n\nNow let's fix the code in the last example."),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/interface_segregation_solution_first.png"),
                const SizedBox(height: 10.0,),
                const Text("The Teacher interface now has only one method. Let's go on and extend this interface to support the different subjects."),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/interface_segregation_solution_second.png"),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/interface_segregation_solution_third.png"),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/interface_segregation_solution_fourth.png"),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/interface_segregation_solution_fifth.png"),
                const SizedBox(height: 10.0,),
                const Text("We have created different interfaces for every subject. Now Jane can teach English without carrying the other methods with them. Here is an example:"),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/interface_segregation_solution_sixth.png"),
                const SizedBox(height: 10.0,),
              ],
            ),
          ),
        ));
  }
}
