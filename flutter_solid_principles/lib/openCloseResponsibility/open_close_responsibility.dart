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
          title: const Text("OC"),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("OC")],
        ));
  }
}
