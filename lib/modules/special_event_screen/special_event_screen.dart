import 'package:ad_samy/shared/components/component.dart';
import 'package:flutter/material.dart';

class SpecialEventScreen extends StatelessWidget {
  const SpecialEventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatButton(),
      body: Column(
        children: [
          SizeBoxStart(context),

        ],
      ),
    );
  }
}
