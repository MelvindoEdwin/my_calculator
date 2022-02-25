import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(my_calculator(
    debugShowCheckedModeBanner: false,
    home: my_calculator,
  ));
}

class my_calculator extends StatefulWidget {
  const my_calculator({Key? key, bool? debugShowCheckedModeBanner, Type? home})
      : super(key: key);

  @override
  _my_calculatorState createState() => _my_calculatorState();
}

class _my_calculatorState extends State<my_calculator> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int hasil = 0, hit1 = 0, hit2 = 0;
  kal() {
    setState(() {
      hit1 = int.parse(controller1.text);
      hit2 = int.parse(controller2.text);
      hasil = hit1 * hit2;
    });
  }

  bag() {
    setState(() {
      hit1 = int.parse(controller1.text);
      hit2 = int.parse(controller2.text);
      hasil = hit1 ~/ hit2;
    });
  }

  tam() {
    setState(() {
      hit1 = int.parse(controller1.text);
      hit2 = int.parse(controller2.text);
      hasil = hit1 + hit2;
    });
  }

  kur() {
    setState(() {
      hit1 = int.parse(controller1.text);
      hit2 = int.parse(controller2.text);
      hasil = hit1 - hit2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Text(
            "Hasil Penghitungan : $hasil",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizeBox(
            height: 20,
          ),
          TextField(
            controller: controller1,
            decoration: InputDecoration(
                labelText: "Input Pertama",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          SizeBox(
            height: 20,
          ),
          TextField(
            controller: controller2,
            decoration: InputDecoration(
                labelText: "Input Kedua",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          SizeBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    kal();
                    controller1.clear();
                    controller2.clear();
                  },
                  child: Text("X")),
              ElevatedButton(
                  onPressed: () {
                    bag();
                    controller1.clear();
                    controller2.clear();
                  },
                  child: Text("/")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    tam();
                    controller1.clear();
                    controller2.clear();
                  },
                  child: Text("+")),
              ElevatedButton(
                  onPressed: () {
                    kur();
                    controller1.clear();
                    controller2.clear();
                  },
                  child: Text("-")),
            ],
          ),
        ]),
      ),
    );
  }
}

SizeBox({int? height}) {}
