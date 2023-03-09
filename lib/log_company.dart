// ignore_for_file: file_names
import 'package:flutter/material.dart';

class LogCompany extends StatefulWidget {
  const LogCompany({super.key});

  @override
  State<LogCompany> createState() => _LogCompany();
}

class _LogCompany extends State<LogCompany> {
  bool _obscuretext = true;
  bool _obscuretext1 = true;
  TextStyle myTextStyle = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );
  TextStyle myButtonStyle = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
      Container(
        margin: const EdgeInsets.only(left: 35, right: 30, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Company Name',
              style: myTextStyle,
            ),
            const SizedBox(height: 3),
            const SizedBox(
              width: 490,
              height: 40,
              child: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
              )),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  'Mobile Numer',
                  style: myTextStyle,
                ),
                const SizedBox(
                  width: 150,
                ),
                Text(
                  'Mail ID',
                  style: myTextStyle,
                ),
              ],
            ),
            const SizedBox(height: 3),
            Row(children:const  [
              SizedBox(
                width: 220,
                height: 40,
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                )),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 250,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
            ]),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Contact Person',
              style: myTextStyle,
            ),
            const SizedBox(
              height: 3,
            ),
            const SizedBox(
              width: 490,
              height: 40,
              child: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
              )),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Company Address',
              style: myTextStyle,
            ),
            const SizedBox(
              height: 3,
            ),
            const SizedBox(
              width: 490,
              height: 200,
              child: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
              )),
            ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 10, right: 15, top: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Type Of Company',
            style: myTextStyle,
          ),
          const SizedBox(
            height: 3,
          ),
          const SizedBox(
            width: 490,
            height: 40,
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Number Of Employees',
            style: myTextStyle,
          ),
          const SizedBox(
            height: 3,
          ),
          const SizedBox(
            width: 490,
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Enter Your Password',
            style: myTextStyle,
          ),
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            width: 490,
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscuretext = !_obscuretext;
                    }
                    );
                  },
                  child: Icon(
                      _obscuretext ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Re-enter Your Password',
            style: myTextStyle,
          ),
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            width: 490,
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscuretext1 = !_obscuretext1;
                    }
                    );
                  },
                  child: Icon(
                      _obscuretext1 ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 35,
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 64, 114, 61),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))
                          ),
                  onPressed: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add,
                        size: 15,
                      ),
                      Text(
                        'Add',
                        style: myButtonStyle,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              SizedBox(
                height: 35,
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 64, 114, 61),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.edit,
                        size: 15,
                      ),
                      Text(
                        'Edit',
                        style: myButtonStyle,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              SizedBox(
                height: 35,
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 64, 114, 61),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.delete_outline,
                        size: 15,
                      ),
                      Text(
                        'Delete',
                        style: myButtonStyle,
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    ]));
  }
}
