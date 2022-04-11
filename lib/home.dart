import 'package:flutter/material.dart' hide Step, Tab;
import 'package:steps/step/step.dart';
import 'package:steps/step/tab.dart';
import 'package:steps/step/tabbed_step.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: false,
        body: Step(
          steps: [
            Text('Step 1'),
            Text('Step 2'),
            TabbedStep(tabs: [
              Tab(title: 'Wifi', child: Text('Wifi Content')),
              Tab(title: 'Cable', child: Text('Cable Content')),
            ]),
            Text('Step 4'),
          ],
        ),
      ),
    );
  }
}
