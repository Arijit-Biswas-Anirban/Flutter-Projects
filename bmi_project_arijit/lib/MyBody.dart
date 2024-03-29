import 'package:flutter/material.dart';

class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  final wtController = TextEditingController();
  final ftController = TextEditingController();
  final inController = TextEditingController();

  var result = "";
  var bgclr = Colors.grey.shade400;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: bgclr,
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'BMI CALCULATOR',
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: wtController,
                  decoration: const InputDecoration(
                    fillColor: Colors.grey,
                    prefixIcon: Icon(Icons.line_weight_rounded),
                    label: Text(
                      "Enter your Weight (in KG):",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      borderSide: BorderSide(color: Colors.cyan, width: 5),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: ftController,
                  decoration: const InputDecoration(
                    fillColor: Colors.grey,
                    prefixIcon: Icon(Icons.height_rounded),
                    label: Text(
                      "Enter your Height (in Foot):",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      borderSide: BorderSide(color: Colors.cyan, width: 5),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: inController,
                  decoration: const InputDecoration(
                    fillColor: Colors.red,
                    prefixIcon: Icon(Icons.height),
                    label: Text(
                      "Enter your Height (in Inch):",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      borderSide: BorderSide(color: Colors.cyan, width: 5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    var wt = wtController.text.toString();
                    var ft = ftController.text.toString();
                    var inch = inController.text.toString();
        
                    if (wt != "" && ft != "" && inch != "") {
                      var iwt = int.parse(wt);
                      var ift = int.parse(ft);
                      var iinch = int.parse(inch);
        
                      var met = ((ift * 12 + iinch) * 2.54) / 100;
                      var bmi = iwt / (met * met);
                      
                      var msg = "";
                      if(bmi > 25)
                      {
                          msg = "You are Over Weighted -_-";
                          bgclr = Colors.orange.shade200;
                      }
                      else if(bmi < 18)
                      {
                          msg = "You are Under Weighted ^_^";
                          bgclr = Colors.red.shade200;
                      }
                      else
                      {
                         msg = "You are Healthy >_o";
                        bgclr = Colors.green.shade200;
                      }
      
                      setState(() {
                        result = "$msg\nYour BMI is : ${bmi.toStringAsFixed(2)}\n\n\n\t\t\t\tThank You <3\t";
                      });
                    } else {
                      setState(() {
                        bgclr = Colors.red.shade500;
                        result = "Please fill all the required blanks!!";
                      });
                    }
                  },
                  child: Text('Calculate'),
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color.fromRGBO(245, 144, 3, 1)),
                    foregroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 244, 255, 34),
                    ),
                    shadowColor: MaterialStatePropertyAll(Colors.red),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  result,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
