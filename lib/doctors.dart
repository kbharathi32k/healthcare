import 'package:flutter/material.dart';
import 'package:healthcare/mywidget.dart';

class Doctors extends StatefulWidget {
  const Doctors({super.key});

  @override
  State<Doctors> createState() => _Doctors();
}

class _Doctors extends State<Doctors> {
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  bool valuefourth = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
      const MyWidget(),
      Container(
          width: MediaQuery.of(context).size.width * 0.8,
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                      height: 33,
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.search_rounded)),
                            suffixIcon: CircleAvatar(
                                radius: 30,
                                backgroundColor:
                                    const Color.fromARGB(255, 64, 114, 61),
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: const Icon(Icons.search_rounded))),
                            hintText: 'Search',
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(20))),
                      )),
                  const SizedBox(
                    width: 600,
                  ),
                  Container(
                      alignment: Alignment.bottomRight,
                      child: Row(children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.comment_bank_outlined),
                          color: const Color.fromARGB(255, 64, 114, 61),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.apps_rounded),
                            color: const Color.fromARGB(255, 64, 114, 61)),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.signal_cellular_alt_outlined),
                          color: const Color.fromARGB(255, 64, 114, 61),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.commute_sharp),
                            color: const Color.fromARGB(255, 64, 114, 61))
                      ]))
                ],
              ),
              const Text(
                "Doctors",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
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
                          labelText: 'Doctor Id',
                          prefixIcon: const Icon(
                            Icons.search_off_outlined,
                            size: 15,
                          )),
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Text(
                    'Speciality',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: 220,
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: 'Search specialist'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              DataTable(
                  border: TableBorder.symmetric(
                    outside: const BorderSide(
                      width: 0.2,
                    ),
                  ),
                  columns:[
                    DataColumn(
                        label: Row(children: [
                      const SizedBox(
                        width: 60,
                      ),
                      SizedBox(
                          width: 150,
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
                        label: Row(children: const [
                      Text('Status'),
                      Icon(
                        Icons.arrow_downward_sharp,
                        size: 15,
                      ),
                    ])),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Row(
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              activeColor:
                                  const Color.fromARGB(255, 31, 146, 33),
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
                        DataCell(Row(children: const [
                          Text(
                            'Available',
                            style: TextStyle(color: Colors.green),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.edit),
                          SizedBox(width: 10),
                          Icon(Icons.delete_outline_outlined)
                        ])),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Row(
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              activeColor:
                                  const Color.fromARGB(255, 31, 146, 33),
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
                        DataCell(Row(children: const [
                          Text(
                            'Available',
                            style: TextStyle(color: Colors.green),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.edit),
                          SizedBox(width: 10),
                          Icon(Icons.delete_outline_outlined)
                        ])),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Row(
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              activeColor:
                                  const Color.fromARGB(255, 31, 146, 33),
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
                        DataCell(Row(children: const [
                          Text(
                            'Available',
                            style: TextStyle(color: Colors.green),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.edit),
                          SizedBox(width: 10),
                          Icon(Icons.delete_outline_outlined)
                        ])),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Row(
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              activeColor:
                                  const Color.fromARGB(255, 31, 146, 33),
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
                        DataCell(Row(children: const [
                          Text(
                            'Available',
                            style: TextStyle(color: Colors.green),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.edit),
                          SizedBox(width: 10),
                          Icon(Icons.delete_outline_outlined)
                        ])),
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
                        label: const Text('upload'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 76, 175, 80),
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
                            backgroundColor:
                                const Color.fromARGB(255, 76, 175, 80),
                          ),
                          child: const Text('Cancel'))),
                ],
              ),
            ],
          ))
    ]));
  }
}
