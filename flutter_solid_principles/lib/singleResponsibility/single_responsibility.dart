import 'package:flutter/material.dart';

class SingleResponsibilityPage extends StatefulWidget {
  const SingleResponsibilityPage({super.key});

  @override
  State<SingleResponsibilityPage> createState() =>
      _SingleResponsibilityPageState();
}

class _SingleResponsibilityPageState extends State<SingleResponsibilityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Single Responsibility"),
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
                const Text("The single-responsibility principle (SRP) is a computer programming principle that states that a module should be responsible to one, and only one"),
                const SizedBox(height: 10.0,),
                const Text("Consider the example below:",style: TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/single_responsibility.png"),
                const SizedBox(height: 10.0,),
                const Text("The class above violates the single responsibility principle. Why?\nThis Student class has three responsibilities – registering students, calculating their results, and sending out emails to students.\nThe code above will work perfectly but will lead to some challenges. We cannot make this code reusable for other classes or objects. The class has a whole lot of logic interconnected that we would have a hard time fixing errors. And as the codebase grows, so does the logic, making it even harder to understand what is going on.\nImagine a new developer joining a team with this sort of logic with a codebase of about two thousand lines of code all congested into one class.\nNow lets fix this!"),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/single_responsibility_first_solution.png"),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/single_responsibility_second_solution.png"),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/single_responsibility_third_solution.png"),
                const SizedBox(height: 10.0,),
                const Text("Now we've separated each functionality in our program. We can call the classes anywhere we want to use them in our code.\n\nThe examples we used use just showed each class having one method – this is mainly for simplicity. You can have as many methods as you want but they should be linked to the responsibility of the class.\n\nNow that we have separated the logic, our code is easier to understand as each core functionality has its own class. We can test for errors more efficiently.\n\nThe code is now reusable. Before, we could only use these functionalities inside one class but now they can be used in any class.\n\nThe code is also easily maintainable and scalable because instead of reading interconnected lines of code, we have separated concerns so we can focus on the features we want to work on"),
              ],
            ),
          ),
        ));
  }
}
