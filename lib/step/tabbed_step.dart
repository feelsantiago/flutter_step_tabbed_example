import 'package:flutter/material.dart' hide Tab;
import 'package:steps/step/tab.dart';

class TabbedStep extends StatefulWidget {
  final List<Tab> tabs;

  const TabbedStep({required this.tabs, Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TabbedStepState();
}

class _TabbedStepState extends State<TabbedStep> {
  int selected = 0;

  Widget _tab(Tab tab, int index) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            selected = index;
          });
        },
        style: ElevatedButton.styleFrom(primary: selected == index ? Colors.red : Colors.red[300]),
        child: Text(tab.title));
  }

  Widget _headers() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: Iterable<int>.generate(widget.tabs.length).map((index) => _tab(widget.tabs[index], index)).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_headers(), widget.tabs[selected]],
    );
  }
}
