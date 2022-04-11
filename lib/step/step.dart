import 'package:flutter/material.dart';
import 'package:steps/step/step_indicator.dart';

class Step extends StatefulWidget {
  final List<Widget> steps;

  const Step({Key? key, required this.steps}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StepState();
}

class _StepState extends State<Step> {
  int step = 0;

  int get stepBounds => widget.steps.length - 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: widget.steps[step]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Visibility(
              visible: step > 0,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      step--;
                    });
                  },
                  child: const Text('Back')),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: StepIndicator(
                indicators: widget.steps.length,
                selected: step,
              ),
            ),
            Visibility(
              visible: step < stepBounds,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      step++;
                    });
                  },
                  child: const Text('Next')),
            ),
          ],
        )
      ],
    );
  }
}
