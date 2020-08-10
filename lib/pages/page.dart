import 'package:flutter/cupertino.dart';

class SimplePage extends StatelessWidget {
  final Widget child;

  SimplePage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: child,
        ),
      ),
    );
  }
}
