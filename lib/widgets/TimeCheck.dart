import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Circular Countdown Timer Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const TimeCheck(title: 'Circular Countdown Timer'),
    );
  }
}

class TimeCheck extends StatefulWidget {
  const TimeCheck({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _TimeCheckState createState() => _TimeCheckState();
}

class _TimeCheckState extends State<TimeCheck> {
  final int _duration = 30;
  final CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularCountDownTimer(
          // Countdown duration in Seconds.
          duration: _duration,

          // Countdown initial elapsed Duration in Seconds.
          initialDuration: 0,

          // Controls (i.e Start, Pause, Resume, Restart) the Countdown Timer.
          controller: _controller,

          // Width of the Countdown Widget.
          width: MediaQuery.of(context).size.width / 2,

          // Height of the Countdown Widget.
          height: MediaQuery.of(context).size.height / 3,

          // Ring Color for Countdown Widget.
          ringColor: Colors.grey[300]!,

          // Ring Gradient for Countdown Widget.
          ringGradient: null,

          // Filling Color for Countdown Widget.
          fillColor: Colors.blue[100]!,

          // Filling Gradient for Countdown Widget.
          fillGradient: null,

          // Background Color for Countdown Widget.
          backgroundColor: Colors.blueAccent[100],

          // Background Gradient for Countdown Widget.
          backgroundGradient: null,

          // Border Thickness of the Countdown Ring.
          strokeWidth: 20.0,

          // Begin and end contours with a flat edge and no extension.
          strokeCap: StrokeCap.round,

          // Text Style for Countdown Text.
          textStyle: const TextStyle(
            fontSize: 33.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),

          // Format for the Countdown Text.
          textFormat: CountdownTextFormat.HH_MM_SS,

          // Handles Countdown Timer (true for Reverse Countdown (max to 0), false for Forward Countdown (0 to max)).
          isReverse: false,

          // Handles Animation Direction (true for Reverse Animation, false for Forward Animation).
          isReverseAnimation: false,

          // Handles visibility of the Countdown Text.
          isTimerTextShown: true,

          // Handles the timer start.
          autoStart: false,

          // This Callback will execute when the Countdown Starts.
          onStart: () {
            // Here, do whatever you want
            debugPrint('Countdown Started');
          },

          // This Callback will execute when the Countdown Ends.
          onComplete: () {
            // Here, do whatever you want
            debugPrint('Countdown Ended');
          },
        ),
        Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 30,
              ),
              _button(title: "Start", onPressed: () => _controller.start()),
              const SizedBox(
                width: 10,
              ),
              _button(title: "Pause", onPressed: () => _controller.pause()),
              const SizedBox(
                width: 10,
              ),
              _button(title: "Resume", onPressed: () => _controller.resume()),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        )
      ],
    );
  }
}

Widget _button({required String title, VoidCallback? onPressed}) {
  return Expanded(
      child: ElevatedButton(
    child: Text(
      title,
      style: const TextStyle(color: Colors.white),
    ),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
    ),
    onPressed: onPressed,
  ));
}