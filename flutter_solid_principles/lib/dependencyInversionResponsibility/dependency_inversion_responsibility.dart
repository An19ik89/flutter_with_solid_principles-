import 'package:flutter/material.dart';

class DependencyInversionResponsibilityPage extends StatefulWidget {
  const DependencyInversionResponsibilityPage({super.key});

  @override
  State<DependencyInversionResponsibilityPage> createState() =>
      _DependencyInversionResponsibilityPageState();
}

class _DependencyInversionResponsibilityPageState extends State<DependencyInversionResponsibilityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("DI"),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("DI")],
        ));
  }
}
