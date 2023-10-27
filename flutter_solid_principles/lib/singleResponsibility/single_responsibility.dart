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
          title: const Text("SR"),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("SR")],
        ));
  }
}
