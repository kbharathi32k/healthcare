import 'package:flutter/material.dart';
import 'package:healthcare/mywidget.dart';

class Request extends StatefulWidget {
  const Request({super.key});

  @override
  State<Request> createState() => _Request();
}

class _Request extends State<Request> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  bool val5 = false;
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
                "Mail Request",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
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
                  DataTable(
                    border: TableBorder.symmetric(
                        inside: BorderSide.none,
                        outside: const BorderSide(width: 0.2)),
                    columns: [
                      DataColumn(
                        label: Row(
                          children: const[
                            Text('Name'),
                            Icon(Icons.arrow_downward_sharp,size: 15,),
                          ],
                        ),
                      ),
                      DataColumn(
                        label: Row(
                          children: const[
                            Text('Mob.No'),
                            Icon(Icons.arrow_downward_sharp,size: 15,),
                          ],
                        ),
                      ),
                      DataColumn(
                        label: Row(
                          children: const[
                            Text('Request & Notification'),
                            Icon(Icons.arrow_downward_sharp,size: 15,),
                          ],
                        ),
                      ),
                      DataColumn(
                        label: Row(
                          children: const[
                            Text('Data'),
                            Icon(Icons.arrow_downward_sharp,size: 15,),
                          ],
                        ),
                      ),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Row(children: [
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: const Color.fromARGB(255, 31, 146, 33),
                            value: val1,
                            shape: const CircleBorder(),
                            onChanged: (value) {
                              setState(() {
                                val1 = value!;
                              });
                            },
                          ),
                          const Text('Jayam Natural Foods'),
                        ])),
                        const DataCell(Text('8735452398')),
                        const DataCell(Text(
                            'Accra Ghana lorem ipsum dolor sit amet,costneneafipesing elie')),
                        DataCell(Row(children: const [
                          Text(
                            'Apr 25',
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.edit),
                          SizedBox(width: 10),
                          Icon(Icons.delete)
                        ])),
                      ]),
                      DataRow(cells: [
                        DataCell(Row(children: [
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: const Color.fromARGB(255, 31, 146, 33),
                            value: val2,
                            shape: const CircleBorder(),
                            onChanged: (value) {
                              setState(() {
                                val2 = value!;
                              });
                            },
                          ),
                          const Text('JST Foods'),
                        ])),
                        const DataCell(Text('9256794155')),
                        const DataCell(Text(
                            'Accra Ghana lorem ipsum dolor sit amet,costneneafipesing elie')),
                        DataCell(Row(children: const [
                          Text(
                            'Apr 25',
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.edit),
                          SizedBox(width: 10),
                          Icon(Icons.delete)
                        ])),
                      ]),
                      DataRow(cells: [
                        DataCell(Row(children: [
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: const Color.fromARGB(255, 31, 146, 33),
                            value: val3,
                            shape: const CircleBorder(),
                            onChanged: (value) {
                              setState(() {
                                val3 = value!;
                              });
                            },
                          ),
                          const Text('Amman Steel Doors'),
                        ])),
                        const DataCell(Text('986587412')),
                        const DataCell(Text(
                            'Accra Ghana lorem ipsum dolor sit amet,costneneafipesing elie')),
                        DataCell(Row(children: const[
                          Text(
                            'Apr 25',
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.edit),
                          SizedBox(width: 10),
                          Icon(Icons.delete)
                        ])),
                      ]),
                      DataRow(cells: [
                        DataCell(Row(children: [
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: const Color.fromARGB(255, 31, 146, 33),
                            value: val4,
                            shape: const CircleBorder(),
                            onChanged: (value) {
                              setState(() {
                                val4 = value!;
                              });
                            },
                          ),
                          const Text('Missiers Doors'),
                        ])),
                        const DataCell(Text('759884412')),
                        const DataCell(Text(
                            'Accra Ghana lorem ipsum dolor sit amet,costneneafipesing elie')),
                        DataCell(Row(children:const [
                          Text(
                            'Apr 25',
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.edit),
                          SizedBox(width: 10),
                          Icon(Icons.delete)
                        ])),
                      ]),
                      DataRow(cells: [
                        DataCell(Row(children: [
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: const Color.fromARGB(255, 31, 146, 33),
                            value: val5,
                            shape: const CircleBorder(),
                            onChanged: (value) {
                              setState(() {
                                val5 = value!;
                              });
                            },
                          ),
                          const Text('Madhuram Chit Funds'),
                        ])),
                        const DataCell(Text('8736452398')),
                        const DataCell(Text(
                            'Accra Ghana lorem ipsum dolor sit amet,costneneafipesing elie')),
                        DataCell(Row(children:const [
                          Text(
                            'Apr 25',
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.edit),
                          SizedBox(width: 10),
                          Icon(Icons.delete)
                        ])),
                      ]),
                    ],
                  ),
                ],
              ),
            ],
          ))
    ]));
  }
}
