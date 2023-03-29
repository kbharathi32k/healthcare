import 'package:flutter/material.dart';
import 'package:healthcare/mywidget.dart';

class ComEmp extends StatefulWidget {
  const ComEmp({super.key});

  @override
  State<ComEmp> createState() => _ComEmp();
}

class _ComEmp extends State<ComEmp> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
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
                "Company & Employee",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 100,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                                width: 1.0, color: Colors.black), //<-- SEE HERE
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.filter_list),
                                color: Colors.black,
                                onPressed: () {},
                              ),
                              const Text(
                                'Filter',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(
                        width: 600,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 30),
                      ),
                      SizedBox(
                        width: 220,
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            prefixIcon: const Icon(
                              Icons.search_off_outlined,
                              size: 20,
                            ),
                            label: const Text('Search'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  DataTable(
                      border: TableBorder.symmetric(
                          outside: const BorderSide(
                              width: 0.2, color: Colors.black)),
                      dataRowColor: MaterialStateColor.resolveWith(
                          (states) => Colors.grey),
                      columns: const [
                        DataColumn(
                          label: SizedBox(
                            width: 5,
                            child: Text('Select'),
                          ),
                        ),
                        DataColumn(
                          label: SizedBox(
                            width: 172,
                            child: Text('Company Name'),
                          ),
                        ),
                        DataColumn(
                          label: SizedBox(
                            width: 152,
                            child: Text(' No.of Employees'),
                          ),
                        ),
                        DataColumn(
                          label: SizedBox(
                            width: 100,
                            child: Text('Mob.No'),
                          ),
                        ),
                        DataColumn(
                          label: SizedBox(
                            width: 200,
                            child: Text('Company Address'),
                          ),
                        ),
                        DataColumn(
                          label: SizedBox(
                            width: 5,
                            child: Text('Delete'),
                          ),
                        ),
                        DataColumn(
                          label: SizedBox(
                            width: 5,
                            child: Text('Edit'),
                          ),
                        ),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(
                            SizedBox(
                              width: 5,
                              child: Checkbox(
                                checkColor: Colors.white,
                                activeColor:
                                    const Color.fromARGB(255, 31, 146, 33),
                                value: val1,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                onChanged: (value) {
                                  setState(() {
                                    val1 = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                          const DataCell(SizedBox(
                              width: 172, child: Text('JEYAM STEELS'))),
                          const DataCell(
                              SizedBox(width: 152, child: Text('50'))),
                          const DataCell(
                              SizedBox(width: 100, child: Text('9154755788'))),
                          const DataCell(SizedBox(
                            width: 200,
                            child: Text(
                              'Accra Ghana Ipsum dolor sit amet,constene afipesing elie,sed ddeelkj',
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                            ),
                          )),
                          const DataCell(
                            SizedBox(width: 50, child: Icon(Icons.delete)),
                          ),
                          const DataCell(
                            SizedBox(width: 5, child: Icon(Icons.edit)),
                          ),
                        ]),
                        DataRow(cells: [
                          DataCell(
                            SizedBox(
                              width: 5,
                              child: Checkbox(
                                checkColor: Colors.white,
                                activeColor:
                                    const Color.fromARGB(255, 31, 146, 33),
                                value: val1,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                onChanged: (value) {
                                  setState(() {
                                    val1 = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                          const DataCell(SizedBox(
                              width: 172, child: Text('JEYAM STEELS'))),
                          const DataCell(
                              SizedBox(width: 152, child: Text('50'))),
                          const DataCell(
                              SizedBox(width: 100, child: Text('9154755788'))),
                          const DataCell(SizedBox(
                            width: 200,
                            child: Text(
                              'Accra Ghana Ipsum dolor sit amet,constene afipesing elie,sed ddeelkj',
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                            ),
                          )),
                          const DataCell(
                            SizedBox(width: 50, child: Icon(Icons.delete)),
                          ),
                          const DataCell(
                            SizedBox(width: 5, child: Icon(Icons.edit)),
                          ),
                        ]),
                      ]),
                  DataTable(
                      border: TableBorder.symmetric(
                          outside:
                              const BorderSide(width: 0.2, color: Colors.grey)),
                      columns: [
                        DataColumn(
                            label: Row(children: const [
                          SizedBox(
                            width: 200,
                            child: Text(' Emp.Name'),
                          ),
                          Icon(
                            Icons.arrow_downward_sharp,
                            size: 15,
                          ),
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
                          SizedBox(
                            width: 50,
                          ),
                          SizedBox(
                            width: 500,
                            child: Text(' Address'),
                          ),
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
                                  shape: const CircleBorder(),
                                  onChanged: (value) {
                                    setState(() {
                                      valuefirst = value!;
                                    });
                                  },
                                ),
                                const CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('assets/image/Doctor.jpg'),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text('Brocklym Simmens'),
                              ],
                            )),
                            const DataCell(Text('Male')),
                            const DataCell(Text('2 yrs')),
                            const DataCell(Text('8736452398')),
                            DataCell(Row(children: const [
                              SizedBox(
                                width: 5,
                              ),
                              Text.rich(
                                TextSpan(
                                  text:
                                      'Accra Ghana Ipsum dolor sit amet,constene afipesing elie,sed ddeelkj',
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.delete),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.edit),
                            ]))
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
                                  shape: const CircleBorder(),
                                  onChanged: (value) {
                                    setState(() {
                                      valuesecond = value!;
                                    });
                                  },
                                ),
                                const CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('assets/image/Doctor.jpg'),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                const Text('Kristin Watson'),
                              ],
                            )),
                            const DataCell(Text('Female')),
                            const DataCell(Text('5 yrs')),
                            const DataCell(Text('9256794155')),
                            DataCell(Row(children: const [
                              Text(
                                'Accra Ghana Ipsum dolor sit amet,constene afipesing elie,sed ddeelkj',
                                maxLines: 2,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.delete),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.edit),
                            ]))
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
                                  shape: const CircleBorder(),
                                  onChanged: (value) {
                                    setState(() {
                                      valuethird = value!;
                                    });
                                  },
                                ),
                                const CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('assets/image/Doctor.jpg'),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                const Text('Jacob Jones'),
                              ],
                            )),
                            const DataCell(Text('Male')),
                            const DataCell(Text('2 yrs')),
                            const DataCell(Text('9865387412')),
                            DataCell(Row(children: const [
                              Text(
                                  'Accra Ghana Ipsum dolor sit amet,constene afipesing elie,sed ddeelkj'),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.delete),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.edit),
                            ]))
                          ],
                        ),
                        DataRow(cells: [
                          DataCell(Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                activeColor:
                                    const Color.fromARGB(255, 31, 146, 33),
                                value: valuefourth,
                                shape: const CircleBorder(),
                                onChanged: (value) {
                                  setState(() {
                                    valuefourth = value!;
                                  });
                                },
                              ),
                              const CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    AssetImage('assets/image/Doctor.jpg'),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              const Text('Cody Fisher'),
                            ],
                          )),
                          const DataCell(Text('Female')),
                          const DataCell(Text('3 yrs')),
                          const DataCell(Text('7598884412')),
                          DataCell(Row(children: const [
                            Text(
                                'Accra Ghana Ipsum dolor sit amet,constene afipesing elie,sed ddeelkj'),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.delete),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.edit),
                          ])),
                        ])
                      ]),
                ],
              ),
            ],
          ))
    ]));
  }
}
