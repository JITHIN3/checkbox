import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  const Check({Key? key}) : super(key: key);

  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  var check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Box"),
      ),
      body: Container(
        child: CheckboxListTile(
          value: check,
          onChanged: (newcheck) {
            setState(
              () {
                check = newcheck!;
              },
            );
          },
          title: Text("Single"),
controlAffinity:ListTileControlAffinity.leading,
        ),
      ),
    );
  }
}
