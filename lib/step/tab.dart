import 'package:flutter/cupertino.dart';

class Tab extends StatelessWidget {
  final String title;
  final Widget child;

  const Tab({required this.title, required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
