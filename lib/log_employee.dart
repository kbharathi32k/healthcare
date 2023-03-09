import 'package:flutter/material.dart';

class LogEmployee extends StatefulWidget {
  const LogEmployee({super.key});

  @override
  State<LogEmployee> createState() => _LogEmployee();
}

class _LogEmployee extends State<LogEmployee> {
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
              'Name',
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
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'Employee ID',
                  style: myTextStyle,
                ),
                const SizedBox(
                  width: 165,
                ),
                Text(
                  'Job Role',
                  style: myTextStyle,
                ),
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            Row(children: const [
              SizedBox(
                width: 225,
                height: 40,
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                )),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 245,
                height: 40,
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                )),
              ),
            ]),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'Company Name',
                  style: myTextStyle,
                ),
                const SizedBox(
                  width: 140,
                ),
                Text(
                  'Material Status',
                  style: myTextStyle,
                ),
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            Row(children: const[
              SizedBox(
                width: 225,
                height: 40,
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                )),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 245,
                height: 40,
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                )),
              ),
            ]),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text('Family Members', style: myTextStyle),
                const SizedBox(width: 105),
                Text('Relation', style: myTextStyle),
                const SizedBox(width: 160),
                Text('Age', style: myTextStyle),
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            Row(children: const [
              SizedBox(
                width: 185,
                height: 40,
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                )),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 185,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 80,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
            ]),
            const SizedBox(
              height: 15,
            ),
            Text('Address', style: myTextStyle),
            const SizedBox(
              width: 490,
              height: 40,
              child: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
              )),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 3,
      ),
      Container(
        margin: const EdgeInsets.only(left: 10, right: 15, top: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Text('Age', style: myTextStyle),
              const SizedBox(width: 230),
              Text('Gender', style: myTextStyle),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
           Row(children:const [
            SizedBox(
              width: 230,
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
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
              )),
            ),
          ]),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text('Mobile Number', style: myTextStyle),
              const SizedBox(width: 160),
              Text('Mail ID', style: myTextStyle),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(children: const[
            SizedBox(
              width: 235,
              height: 40,
              child: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
              )),
            ),
            SizedBox(width: 20),
            SizedBox(
              width: 240,
              height: 40,
              child: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
              )),
            ),
          ]),
          const SizedBox(height: 10),
          const Text('Upload Photo'),
          Image.asset(
            'assets/noimage.jpg',
            height: 200,
            width: 200,
          ),
          const SizedBox(
            height: 3,
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
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {},
                  child: Row(
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
