import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Reciving'),
                    Text('Reciving'),
                    Spacer(),
                    Text('.Net'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Reciving'),
                    Text('Reciving'),
                    Spacer(),
                    Text('.Net'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Reciving'),
                    Text('Reciving'),
                    Spacer(),
                    Text('.Net'),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
