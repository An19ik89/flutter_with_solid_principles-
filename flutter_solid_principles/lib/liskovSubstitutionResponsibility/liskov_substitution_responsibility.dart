import 'package:flutter/material.dart';

class LiskovSubstitutionResponsibilityPage extends StatefulWidget {
  const LiskovSubstitutionResponsibilityPage({super.key});

  @override
  State<LiskovSubstitutionResponsibilityPage> createState() =>
      _LiskovSubstitutionResponsibilityPageState();
}

class _LiskovSubstitutionResponsibilityPageState extends State<LiskovSubstitutionResponsibilityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const FittedBox(fit: BoxFit.contain,child: Text("Liskov Substitution Principle")),
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
                const Text("The Liskov Substitution Principle (LSP) is a fundamental principle in object-oriented programming that states that objects of a superclass should be able to be replaced with objects of a subclass without affecting the correctness of the program"),
                const SizedBox(height: 10.0,),
                const Text("Let's say we have a class called Amphibian for animals that can live on both land and water. This class has two methods to show the features of an amphibian – swim() and walk()."),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/liskov_substitution_first.png"),
                const Text("The Amphibian class can extend to a Frog class because frogs are amphibians, so they can inherit the properties of the Amphibian class without altering the logic and purpose of the class."),
                const SizedBox(height: 10.0,),
                Image.asset("assets/images/liskov_substitution_second.png"),
                const SizedBox(height: 10.0,),
                const Text("But we cannot extend the Amphibian class to a Dolphin class because dolphins only live in water which implies that the walk() method would be irrelevant to the Dolphin class.\n\nSo, when you extend a class, if some of the properties of the initial class are not useful for the new class, the Liskov substitution principle has been violated.\n\nThe solution to this is simple: create interfaces that match the needs of the inheriting class."),
                const SizedBox(height: 10.0,),
              ],
            ),
          ),
        ));
  }
}
