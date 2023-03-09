import 'package:flutter/material.dart';
import 'package:healthcare/mywidget.dart';

class ChangePwd extends StatefulWidget 
{
  const ChangePwd({super.key});

  @override
  State<ChangePwd> createState() => _ChangePwd();
}

class _ChangePwd extends State<ChangePwd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(80)),
          Container(
              color: const Color.fromARGB(255, 248, 245, 245),
              height: 300,
              width: 300,
              child: Center(
                  child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Change Password',
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      fontSize: 23,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 250,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: 'New Password',
                        labelStyle: const TextStyle(
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            color: Colors.black)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                ),
                SizedBox(
                  width: 250,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Confirm Password',
                        labelStyle: const TextStyle(
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            color: Colors.black)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 64, 114, 61),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyWidget()));
                    },
                    child: const Text(
                      'Save',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ]))),
        ],
      ),
    ));
  }
}
