import 'package:flutter/material.dart';

class OpenCloseResponsibilityPage extends StatefulWidget {
  const OpenCloseResponsibilityPage({super.key});

  @override
  State<OpenCloseResponsibilityPage> createState() =>
      _OpenCloseResponsibilityPageState();
}

class _OpenCloseResponsibilityPageState extends State<OpenCloseResponsibilityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const FittedBox(fit: BoxFit.contain,child: Text("Open Close Principle")),
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
                const Text("\"Software entities (classes, modules, functions, etc.) should be open for extension, but closed for modification\".\n\nThe general idea of this principle is great. It tells you to write your code so that you will be able to add new functionality without changing the existing code."),
                const SizedBox(height: 10.0,),
                const Text("In the example below, we're going to write the code for calculating the body mass index (BMI) of a person:"),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/open_close_first.png"),
                const SizedBox(height: 10.0,),
                const Text("We've created the Human class which provides the height and width properties of the class. Now, let's calculate the first person's BMI."),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/open_close_second.png"),
                const SizedBox(height: 10.0,),
                const Text("We've calculate the BMI of a person named John. We'll go on and calculate the BMI for a person named Jane."),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/open_close_third.png"),
                const SizedBox(height: 10.0,),
                const Text("The problem with this is that we keep modifying the code every time we need to calculate the BMI of another person.\n\nThis also violates the SRP because the class now has more than one reason to change.\n\nAlthough the code above may work perfectly, it's not efficient. We modify the code constantly which may lead to bugs. And the code only has provision for humans. What if we have to calculate for an animal or an object?\n\nLet's fix the problem using the open-closed principle."),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/open_close_solution_first.png"),
                const SizedBox(height: 10.0,),
                const Text("Another good practise : "),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/open_close_solution_second.png"),
                const SizedBox(height: 10.0,),
              ],
            ),
          ),
        ));
  }
}
