import 'package:flutter/material.dart';

import 'widget/neumorphism_button_widget.dart';

class ButtonChanger extends StatefulWidget {
  const ButtonChanger({Key? key}) : super(key: key);

  @override
  State<ButtonChanger> createState() => _ButtonChangerState();
}

class _ButtonChangerState extends State<ButtonChanger> {
  bool _darkMode = false;
  bool _threeDOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _darkMode ? Colors.grey[850] : Colors.grey[300],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NeumorphismButtonWidget(
            darkMode: _darkMode,
            height: 200,
            width: 200,
            borderRadiusOfButton: 100,
            threeDOn: _threeDOn,
            function: () {
              print('Button Pressed');
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _darkMode = true;
                    });
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(2)),
                    elevation: MaterialStateProperty.all(0.0),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: Colors.white))),
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  child: Text(
                    'Dark',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _darkMode = false;
                    });
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(2)),
                    elevation: MaterialStateProperty.all(0.0),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: Colors.white))),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: Text(
                    'Light',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _threeDOn = !_threeDOn;
                });
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                elevation: MaterialStateProperty.all(0.0),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(color: Colors.white))),
                backgroundColor: MaterialStateProperty.all(
                    _threeDOn ? Colors.red : Colors.blue),
              ),
              child: Text(
                _threeDOn ? '3D OFF' : '3D ON',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
