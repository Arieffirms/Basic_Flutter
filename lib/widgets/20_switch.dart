import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SwitchLearn extends StatefulWidget {
  const SwitchLearn({super.key});

  @override
  State<SwitchLearn> createState() => _SwitchLearnState();
}

class _SwitchLearnState extends State<SwitchLearn> {
  bool statusSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.scale(
              // scale: 1.3,
              scaleY: 1,
              scaleX: 2,
              child: Switch(
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                activeTrackColor: Colors.amber,
                inactiveTrackColor: Colors.black,
                inactiveThumbImage: const AssetImage('images/star.png'),
                activeThumbImage: const AssetImage('images/smile.png'),
                value: statusSwitch,
                onChanged: (value) {
                  setState(
                    () {
                      statusSwitch = !statusSwitch;
                    },
                  );
                  // print(statusSwitch);
                },
              ),
            ),
            Text(
              statusSwitch == true ? "Switch ON" : "Switch OFF",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
