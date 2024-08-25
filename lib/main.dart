import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:productivity_timer/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Work Timer',
      home: TimerHomePage(),
    );
  }
}

class TimerHomePage extends StatelessWidget {
  final double defaultPadding = 5.0;

  const TimerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Work Timer'),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        final double availableWidth = constraints.maxWidth;
        return Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                  child: ProductivityButton(
                    color: const Color(0xff009688),
                    text: "Work",
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                  child: ProductivityButton(
                    color: const Color(0xff607D8B),
                    text: "Short Break",
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                  child: ProductivityButton(
                    color: const Color(0xff455A64),
                    text: "Long Break",
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
              ],
            ),
            Expanded(
              child: CircularPercentIndicator(
                radius: availableWidth / 2.2,
                lineWidth: 10.0,
                percent: 1,
                center: Text(
                  "30:00",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                progressColor: const Color(0xff009688),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                  child: ProductivityButton(
                    color: const Color(0xff212121),
                    text: "Stop",
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                  child: ProductivityButton(
                    color: const Color(0xff009688),
                    text: "Restart",
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}
