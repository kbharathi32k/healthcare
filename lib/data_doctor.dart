import 'package:flutter/material.dart';

class DataDoctor extends StatefulWidget {
  const DataDoctor({super.key});

  @override
  State<DataDoctor> createState() => _DataDoctor();
}

class _DataDoctor extends State<DataDoctor> {
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  bool valuefourth = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                width: 220,
                height: 30,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      prefixIcon: const Icon(
                        Icons.search_off_outlined,
                        size: 15,
                      )),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          DataTable(columns:[
            DataColumn(
                label: Row(children: [
              const SizedBox(
                width: 60,
              ),
              SizedBox(
                  width: 130,
                  child: Row(
                    children: const [
                      Text('Doctor'),
                      Icon(
                        Icons.arrow_downward_sharp,
                        size: 15,
                      ),
                    ],
                  )),
            ])),
            DataColumn(
                label: Row(children: const [
              Text('Gender'),
              Icon(
                Icons.arrow_downward_sharp,
                size: 15,
              ),
            ])),
            DataColumn(
                label: Row(children: const [
              Text('Experience'),
              Icon(
                Icons.arrow_downward_sharp,
                size: 15,
              ),
            ])),
            DataColumn(
                label: Row(children: const [
              Text('Mob.No'),
              Icon(
                Icons.arrow_downward_sharp,
                size: 15,
              ),
            ])),
            DataColumn(
                label: Row(children: const [
              Text('Clinic Address'),
              Icon(
                Icons.arrow_downward_sharp,
                size: 15,
              ),
            ])),
            DataColumn(
                label: Row(children: [
              const SizedBox(
                width: 60,
              ),
              SizedBox(
                  width: 109,
                  child: Row(
                    children: const [
                      Text('Registered Date'),
                      Icon(
                        Icons.arrow_downward_sharp,
                        size: 15,
                      ),
                    ],
                  )),
            ])),
          ], rows: [
            DataRow(
              cells: [
                DataCell(Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: const Color.fromARGB(255, 31, 146, 33),
                      value: valuefirst,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      onChanged: (value) {
                        setState(() {
                          valuefirst = value!;
                        });
                      },
                    ),
                    const CircleAvatar(
                      maxRadius: 17,
                      minRadius: 17,
                      backgroundImage: AssetImage('assets/doctor.jpg'),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Text('Brocklym Simmens'),
                  ],
                )),
                const DataCell(Text('Male')),
                const DataCell(Text('2 yrs')),
                const DataCell(Text('8736452398')),
                const DataCell(Text(
                    'Accra Ghana Ipsum dolor sit amet,constene afipesing elie,sed ddeelkj')),
                DataCell(Row(
                  children: const [
                    Text('25-04-2022'),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.delete)
                  ],
                )),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: const Color.fromARGB(255, 31, 146, 33),
                      value: valuesecond,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      onChanged: (value) {
                        setState(() {
                          valuesecond = value!;
                        });
                      },
                    ),
                    const CircleAvatar(
                      maxRadius: 17,
                      minRadius: 17,
                      backgroundImage: AssetImage('assets/doctor.jpg'),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Text('Kristin Watson'),
                  ],
                )),
                const DataCell(Text('Female')),
                const DataCell(Text('5 yrs')),
                const DataCell(Text('9256794155')),
                const DataCell(Text(
                    'Accra Ghana Ipsum dolor sit amet,constene afipesing elie,sed ddeelkj')),
                DataCell(Row(
                  children: const [
                    Text('25-04-2022'),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.delete)
                  ],
                )),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: const Color.fromARGB(255, 31, 146, 33),
                      value: valuethird,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      onChanged: (value) {
                        setState(() {
                          valuethird = value!;
                        });
                      },
                    ),
                    const CircleAvatar(
                      maxRadius: 17,
                      minRadius: 17,
                      backgroundImage: AssetImage('assets/doctor.jpg'),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Text('Jacob Jones'),
                  ],
                )),
                const DataCell(Text('Male')),
                const DataCell(Text('2 yrs')),
                const DataCell(Text('9865387412')),
                const DataCell(Text(
                    'Accra Ghana Ipsum dolor sit amet,constene afipesing elie,sed ddeelkj')),
                DataCell(Row(
                  children: const [
                    Text('25-04-2022'),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.delete)
                  ],
                )),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: const Color.fromARGB(255, 31, 146, 33),
                      value: valuefourth,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      onChanged: (value) {
                        setState(() {
                          valuefourth = value!;
                        });
                      },
                    ),
                    const CircleAvatar(
                      maxRadius: 17,
                      minRadius: 17,
                      backgroundImage: AssetImage('assets/doctor.jpg'),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Text('Cody Fisher'),
                  ],
                )),
                const DataCell(Text('Female')),
                const DataCell(Text('3 yrs')),
                const DataCell(Text('7598884412')),
                const DataCell(Text(
                    'Accra Ghana Ipsum dolor sit amet,constene afipesing elie,sed ddeelkj')),
                DataCell(Row(
                  children: const [
                    Text('25-04-2022'),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.delete)
                  ],
                )),
              ],
            ),
          ]),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                width: 600,
              ),
              SizedBox(
                width: 140,
                height: 36,
                child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.upload),
                    label: const Text('Upload File'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 76, 175, 80),
                    )),
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                  width: 140,
                  height: 36,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 76, 175, 80),
                      ),
                      child: const Text('Cancel'))),
            ],
          ),
        ],
      ),
    );
  }
}
