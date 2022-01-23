import 'package:flutter/material.dart';

class NavigationContainer extends StatelessWidget {
  const NavigationContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 1,
      color: Theme.of(context).textTheme.bodyText1!.color,
    );
  }
}
