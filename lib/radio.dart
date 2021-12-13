import 'package:flutter/material.dart';

class Radiobut extends StatefulWidget {
  const Radiobut({Key? key}) : super(key: key);

  @override
  _RadiobutState createState() => _RadiobutState();
}

class _RadiobutState extends State<Radiobut> {
  int value = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              "Male",
              style: TextStyle(color: Colors.black),
            ),
            leading: Radio<int>(
              value: 1,
              groupValue: value,
              onChanged: (newvalue) {
                setState(
                  () {
                    value = newvalue!;
                  },
                );
              },activeColor:Colors.red

              ,
            ),
          ),
          ListTile(
            title: Text('Female'),
            leading: Radio<int>(
              value: 5,
              groupValue: value,
              onChanged: (newvalue) {
                setState(
                  () {
                    value = newvalue!;
                  },
                );
              },activeColor: Colors.red,
            ),
          ),
          ListTile(
            title: Text("Others"),
            leading: Radio<int>(
              value: 7,
              groupValue: value,
              onChanged: (newvalue) {
                setState(() {
                  value = newvalue!;
                });
              },
              activeColor: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
