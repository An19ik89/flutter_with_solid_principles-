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
          title: const FittedBox(fit: BoxFit.contain,child: Text("Interface Segregation Responsibility")),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("IS")],
        ));
  }
}
