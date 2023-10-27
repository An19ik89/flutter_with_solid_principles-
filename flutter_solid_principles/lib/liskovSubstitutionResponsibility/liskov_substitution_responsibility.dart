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
          title: const Text("LS"),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("LS")],
        ));
  }
}
