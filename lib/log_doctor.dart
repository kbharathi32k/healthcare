import 'package:flutter/material.dart';

class LogDoctor extends StatefulWidget {
  const LogDoctor({super.key});

  @override
  State<LogDoctor> createState() => _LogDoctor();
}

class _LogDoctor extends State<LogDoctor> {
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
              'Doctor Name',
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
            const SizedBox(height: 15),
            Row(
              children: [
                Text(
                  'Mobile Number',
                  style: myTextStyle,
                ),
                const SizedBox(
                  width: 155,
                ),
                Text(
                  'Mail ID',
                  style: myTextStyle,
                ),
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
              SizedBox(width: 15),
              SizedBox(
                width: 235,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
            ]),
            const SizedBox(height: 15),
            Row(
              children: [
                Text(
                  'Doctor ID',
                  style: myTextStyle,
                ),
                const SizedBox(width: 195),
                Text(
                  'Specialist',
                  style: myTextStyle,
                ),
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            Row(children: const [
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
                width: 235,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
            ]),
            const SizedBox(height: 15),
            Row(
              children: [
                Text(
                  'Mode of consultant',
                  style: myTextStyle,
                ),
                const SizedBox(
                  width: 130,
                ),
                Text(
                  'Available Time',
                  style: myTextStyle,
                ),
              ],
            ),
            const SizedBox(height: 3),
            Row(children: const [
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
                width: 235,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
            ]),
            const SizedBox(height: 15),
            Text(
              'Clinic Name',
              style: myTextStyle,
            ),
            const SizedBox(
              height: 3,
            ),
            const SizedBox(
              width: 500,
              height: 40,
              child: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
              )),
            ),
            const SizedBox(height: 15),
            Text(
              'Clinic Address',
              style: myTextStyle,
            ),
            const SizedBox(
              height: 3,
            ),
            const SizedBox(
              width: 500,
              height: 80,
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
          Row(
            children: [
              Text('Age', style: myTextStyle),
              const SizedBox(
                width: 146,
              ),
              Text('Gender', style: myTextStyle),
              const SizedBox(
                width: 137,
              ),
              Text('Experience', style: myTextStyle),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(children:const [
            SizedBox(
              width: 120,
              height: 40,
              child: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
              )),
            ),
            SizedBox(width: 50),
            SizedBox(
              width: 120,
              height: 40,
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            SizedBox(width: 50),
            SizedBox(
              width: 120,
              height: 40,
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
          ]),
          const SizedBox(height: 20),
          const Text(
            'Enter Your Password',
            style: TextStyle(
                fontFamily: 'Outfit',
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 3,
          ),
          const SizedBox(
            width: 465,
            height: 40,
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Confirm Password',
            style: TextStyle(
                fontFamily: 'Outfit',
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 3,
          ),
          const SizedBox(
            width: 465,
            height: 40,
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
            )),
          ),
          const SizedBox(
            height: 10,
          ),
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
