import 'package:flutter/material.dart';

class StepIndicator extends StatelessWidget {
  final int indicators;
  final int selected;

  const StepIndicator({Key? key, required this.indicators, this.selected = 0}) : super(key: key);

  bool _isActive(int index) {
    return index == selected;
  }

  Widget _circle(int index) {
    return Container(
      height: 15,
      width: 15,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: _isActive(index) ? Colors.grey : Colors.grey[300]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: Iterable<int>.generate(indicators).map((index) => _circle(index)).toList(),
    );
  }
}
