import 'package:flutter/material.dart';

class PaddedScaffold extends StatelessWidget {
  const PaddedScaffold({
    super.key,
    required this.body,
    this.padding = 16.0,
    this.appBar,
  });

  final Widget? body;
  final double padding;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: EdgeInsets.all(padding),
        child: body,
      ),
    );
  }
}
