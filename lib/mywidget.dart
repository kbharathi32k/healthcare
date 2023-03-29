import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import'package:searchbar_animation/searchbar_animation.dart';
import 'data_doctor.dart';
import 'data_employee.dart';
import 'log_company.dart';
import 'log_doctor.dart';
import 'log_employee.dart';
import 'off_company.dart';
import 'off_doctor.dart';
import 'off_employee.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  bool valuefourth = false;

  PageController page = PageController();
  SideMenuController sideMenu = SideMenuController();
  TextStyle myTextStyle = const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Colors.white);
  @override
  void initState() {
    sideMenu.addListener((p0) {
      page.jumpToPage(p0);
    });
    super.initState();
  }

  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  bool val5 = false;
Widget _buildSearchbarAnimation() {
    return SafeArea(
      child: SizedBox(
        height: 40,width: 300,
        child: SearchBarAnimation(
          searchBoxBorderColour: Colors.black,
                          textEditingController: TextEditingController(),
                          isOriginalAnimation: true,
                          onExpansionComplete: () {
                            debugPrint(
                                'do something just after searchbox is opened.');
                          },
                          onCollapseComplete: () {
                            debugPrint(
                                'do something just after searchbox is closed.');
                          },
                          onPressButton: (isSearchBarOpens) {
                            debugPrint(
                                'do something before animation started. It\'s the ${isSearchBarOpens ? 'opening' : 'closing'} animation');
                          },
                          trailingWidget: const Icon(
                            Icons.search,
                            size: 18,
                            color: Color.fromARGB(255, 79, 121, 63),
                          ),
                          secondaryButtonWidget: const Icon(
                            Icons.close,
                            size: 18,
                            color: Color.fromARGB(255, 79, 121, 63),
                          ),
                          buttonWidget: const Icon(
                            Icons.search,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [         
          SizedBox(
          width: MediaQuery.of(context).size.width * 0.2,
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(43),
              ),
              color: const Color.fromARGB(255, 64, 114, 61),
              child: SideMenu(              
                controller: sideMenu,
                style: SideMenuStyle(
                    displayMode: SideMenuDisplayMode.auto,
                    selectedColor: Colors.white,
                    hoverColor: const Color.fromARGB(255, 60, 151, 56),
                    unselectedTitleTextStyle: myTextStyle,
                    selectedTitleTextStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromARGB(255, 64, 114, 61),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                    unselectedIconColor: Colors.white,
                    selectedIconColor: const Color.fromARGB(255, 64, 114, 61),
                  ),
                title: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/plus.jpeg',
                          height: 50,
                          width: 50,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const SizedBox(
                          width: 175,
                          child: Text.rich(
                            TextSpan(children: [
                            TextSpan(
                                text: 'A',
                                style: TextStyle(
                                    fontFamily: 'SourceCodePro',
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            TextSpan(
                                text: 'GAN ',
                                style: TextStyle(
                                    fontFamily: 'SourceCodePro',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            TextSpan(
                                text: 'H',
                                style: TextStyle(
                                    fontFamily: 'SourceCodePro',
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            TextSpan(
                                text: 'EALTHCARE ',
                                style: TextStyle(
                                    fontFamily: 'SourceCodePro',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            TextSpan(
                                text: 'S',
                                style: TextStyle(
                                    fontFamily: 'SourceCodePro',
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            TextSpan(
                                text: 'ERVICES',
                                style: TextStyle(
                                    fontFamily: 'SourceCodePro',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))
                          ])),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(children: [
                      const SizedBox(
                        width: 2,
                      ),
                      const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/doctor.jpeg')),
                      const SizedBox(width: 3,),
                      Column(
                        children: const [
                          Text(
                            'Anna George',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: Colors.white),
                          ),
                          Text(
                            'Admin',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 11,
                                color: Colors.white),
                          )
                        ],
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      )
                    ]),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                items: [
                  SideMenuItem(
                    priority: 0,
                    title: 'Creating Accounts',
                    onTap: (page, _) {
                      sideMenu.changePage(page);
                    },
                    icon: const Icon(Icons.login_outlined),
                  ),
                  SideMenuItem(
                    priority: 1,
                    title: 'Doctors',
                    onTap: (page, _) {
                      sideMenu.changePage(page);
                    },
                    icon: const Icon(Icons.person_2_outlined),
                  ),
                  SideMenuItem(
                    priority: 2,
                    title: 'Company & Employee',
                    onTap: (page, _) {
                      sideMenu.changePage(page);
                    },
                    icon: const Icon(Icons.person_2_outlined),
                  ),
                  SideMenuItem(
                    priority: 3,
                    title: 'Request',
                    onTap: (page, _) {
                      sideMenu.changePage(page);
                    },
                    icon: const Icon(Icons.mode_comment_outlined),
                  ),
                  SideMenuItem(
                    priority: 4,
                    title: 'Data',
                    onTap: (page, _) {
                      sideMenu.changePage(page);
                    },
                    icon: const Icon(Icons.mode_comment_outlined),
                  ),
                  SideMenuItem(
                    priority: 5,
                    title: 'Offers',
                    onTap: (page, _) {
                      sideMenu.changePage(page);
                    },
                    icon: const Icon(Icons.inbox_outlined),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: PageView(controller: page, 
              children: [
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 30
                      ),
                       _buildSearchbarAnimation(),
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
                              icon: const Icon(
                                  Icons.signal_cellular_alt_outlined),
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
                    "Creating Accounts",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 900,
                    child: TabBar(
                        labelColor: Color.fromARGB(255, 64, 114, 61),
                        unselectedLabelColor:
                            Color.fromARGB(255, 141, 137, 137),
                        indicatorColor: Color.fromARGB(255, 64, 114, 61),
                        tabs: [
                          Tab(
                            child: Text(
                              'Company',
                              style: TextStyle(
                                  fontFamily: 'Outfit',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 64, 114, 61)),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Doctors',
                              style: TextStyle(
                                  fontFamily: 'Outfit',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 64, 114, 61)),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Employee',
                              style: TextStyle(
                                  fontFamily: 'Outfit',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 64, 114, 61)),
                            ),
                          )
                        ]),
                  ),
                  const Expanded(
                    child: TabBarView(children: [
                      LogCompany(),
                      LogDoctor(),
                      LogEmployee(),
                    ]),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    _buildSearchbarAnimation(),
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
                            icon:
                                const Icon(Icons.signal_cellular_alt_outlined),
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                    columns: [
                      DataColumn(
                          label: Row(
                            children: [
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
                                backgroundImage:
                                    AssetImage('assets/doctor.jpg'),
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
                                backgroundImage:
                                    AssetImage('assets/doctor.jpg'),
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
                                backgroundImage:
                                    AssetImage('assets/doctor.jpg'),
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
                                backgroundImage:
                                    AssetImage('assets/doctor.jpg'),
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
            ),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    _buildSearchbarAnimation(),
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
                            icon:
                                const Icon(Icons.signal_cellular_alt_outlined),
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
                  const SizedBox(height:10),
                  DataTable(
                      border: TableBorder.symmetric(
                          outside: const BorderSide(
                              width: 0.2, color: Colors.black)),
                      dataRowColor: MaterialStateColor.resolveWith(
                          (states) => Colors.grey),
                      columns: const [
                        DataColumn(
                          label: SizedBox(
                            width: 56,
                            child: Text('Select'),
                          ),
                        ),
                        DataColumn(
                          label: SizedBox(
                            width: 120,
                            child: Text('Company Name'),
                          ),
                        ),
                        DataColumn(
                          label: SizedBox(
                            width: 120,
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
                            width: 50,
                            child: Text('Delete'),
                          ),
                        ),
                        DataColumn(
                          label: SizedBox(
                            width: 60,
                            child: Text('Edit'),
                          ),
                        ),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(
                            SizedBox(
                              width: 60,
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
                              width: 120, child: Text('JEYAM STEELS'))),
                          const DataCell(
                              SizedBox(width: 120, child: Text('50'))),
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
                            SizedBox(width: 60, child: Icon(Icons.edit)),
                          ),
                        ]),
                        DataRow(cells: [
                          DataCell(
                            SizedBox(
                              width: 60,
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
                              width: 120, child: Text('JEYAM STEELS'))),
                          const DataCell(
                              SizedBox(width: 120, child: Text('50'))),
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
                            SizedBox(width: 60, child: Icon(Icons.edit)),
                          ),
                        ]),                      ]),
                  DataTable(
                      border: TableBorder.symmetric(
                          outside:
                              const BorderSide(width: 0.2, color: Colors.grey)),
                      columns: [
                        const DataColumn(label: SizedBox(width:20,child: Text(''))),
                        DataColumn(
                            label: SizedBox(width:160,
                              child: Row(children: const [
                                                      Text(' Emp.Name'),
                                                      Icon(
                              Icons.arrow_downward_sharp,
                              size: 15,
                                                      ),
                                                    ]),
                            )),
                        DataColumn(
                            label: SizedBox(width:62,
                              child: Row(children: const [
                                                      Text('Gender'),
                                                      Icon(
                              Icons.arrow_downward_sharp,
                              size: 15,
                                                      ),
                                                    ]),
                            )),
                        DataColumn(
                            label: SizedBox(width:85,
                              child: Row(children: const [
                                                      Text('Experience'),
                                                      Icon(
                              Icons.arrow_downward_sharp,
                              size: 15,
                                                      ),
                                                    ]),
                            )),
                        DataColumn(
                            label: SizedBox(width:80,
                              child: Row(children: const [
                                                      Text('Mob.No'),
                                                      Icon(
                              Icons.arrow_downward_sharp,
                              size: 15,
                                                      ),
                                                    ]),
                            )),
                        DataColumn(
                            label: SizedBox(width:200,
                              child: Row(children: const [
                                Text(' Address'),
                                                      Icon(
                              Icons.arrow_downward_sharp,
                              size: 15,
                                                      ),
                                                    ]),
                            )),
                        const DataColumn(
                          label: SizedBox(
                            width: 20,
                            child: Text(''),
                          ),
                        ),
                        const DataColumn(
                          label: SizedBox(
                            width: 20,
                            child: Text(''),
                          ),
                        ),
                      ],
                      rows: [
                        DataRow(
                          cells: [
                          DataCell(
                            SizedBox(
                              width: 20,
                              child: Checkbox(
                                checkColor: Colors.white,
                                activeColor:
                                    const Color.fromARGB(255, 31, 146, 33),
                                value: val1,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                onChanged: (value) {
                                  setState(() {
                                    valuefirst = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                            DataCell(SizedBox(width:160,
                              child: Row(
                                children: const [
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundImage:
                                        AssetImage('assets/image/Doctor.jpg'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('Brocklym Simmens'),
                                ],
                              ),
                            )),
                          const DataCell(
                              SizedBox(width: 62, child: Text('Male'))),
                          const DataCell(
                              SizedBox(width: 85, child: Text('2 Yrs'))),
                          const DataCell(
                              SizedBox(width: 80, child: Text('8334755788'))),
                          const DataCell(SizedBox(width:200,
                            child: Text.rich(
                                TextSpan(
                                  text:
                                      'Accra Ghana Ipsum dolor sit amet,constene afipesing elie,sed ddeelkj',
                                ),
                              ),
                          )),
                          const DataCell(
                            SizedBox(width: 20, child: Icon(Icons.delete)),
                          ),
                          const DataCell(
                            SizedBox(width: 20, child: Icon(Icons.edit)),
                          ),
                          ],
                        ),
                        DataRow(
                          cells: [
                          DataCell(
                            SizedBox(
                              width: 20,
                              child: Checkbox(
                                checkColor: Colors.white,
                                activeColor:
                                    const Color.fromARGB(255, 31, 146, 33),
                                value: val1,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                onChanged: (value) {
                                  setState(() {
                                    valuefirst = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                            DataCell(SizedBox(width:160,
                              child: Row(
                                children: const [
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundImage:
                                        AssetImage('assets/image/Doctor.jpg'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('Brocklym Simmens'),
                                ],
                              ),
                            )),
                          const DataCell(
                              SizedBox(width: 62, child: Text('Male'))),
                          const DataCell(
                              SizedBox(width: 85, child: Text('2 Yrs'))),
                          const DataCell(
                              SizedBox(width: 80, child: Text('8334755788'))),
                          const DataCell(SizedBox(width:200,
                            child: Text.rich(
                                TextSpan(
                                  text:
                                      'Accra Ghana Ipsum dolor sit amet,constene afipesing elie,sed ddeelkj',
                                ),
                              ),
                          )),
                          const DataCell(
                            SizedBox(width: 20, child: Icon(Icons.delete)),
                          ),
                          const DataCell(
                            SizedBox(width: 20, child: Icon(Icons.edit)),
                          ),
                          ],
                        ),
                        ]
                  ),
                
                ],
              ),

              ],
            ),
            Column(
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
                            icon:
                                const Icon(Icons.signal_cellular_alt_outlined),
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
                            children: const [
                              Text('Name'),
                              Icon(
                                Icons.arrow_downward_sharp,
                                size: 15,
                              ),
                            ],
                          ),
                        ),
                        DataColumn(
                          label: Row(
                            children: const [
                              Text('Mob.No'),
                              Icon(
                                Icons.arrow_downward_sharp,
                                size: 15,
                              ),
                            ],
                          ),
                        ),
                        DataColumn(
                          label: Row(
                            children: const [
                              Text('Request & Notification'),
                              Icon(
                                Icons.arrow_downward_sharp,
                                size: 15,
                              ),
                            ],
                          ),
                        ),
                        DataColumn(
                          label: Row(
                            children: const [
                              Text('Data'),
                              Icon(
                                Icons.arrow_downward_sharp,
                                size: 15,
                              ),
                            ],
                          ),
                        ),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Row(children: [
                            Checkbox(
                              checkColor: Colors.white,
                              activeColor:
                                  const Color.fromARGB(255, 31, 146, 33),
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
                              activeColor:
                                  const Color.fromARGB(255, 31, 146, 33),
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
                              activeColor:
                                  const Color.fromARGB(255, 31, 146, 33),
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
                              activeColor:
                                  const Color.fromARGB(255, 31, 146, 33),
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
                              activeColor:
                                  const Color.fromARGB(255, 31, 146, 33),
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
                      ],
                    ),
                  ],
                ),
              ],
            ),
            DefaultTabController(
              length: 2,
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
                                        icon:
                                            const Icon(Icons.search_rounded))),
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
                              icon: const Icon(
                                  Icons.signal_cellular_alt_outlined),
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
                    "Deleted Employees & Doctors",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 900,
                    child: TabBar(
                        labelColor: Color.fromARGB(255, 64, 114, 61),
                        unselectedLabelColor:
                            Color.fromARGB(255, 141, 137, 137),
                        indicatorColor: Color.fromARGB(255, 64, 114, 61),
                        tabs: [
                          Tab(
                            child: Text(
                              'Employees',
                              style: TextStyle(
                                  fontFamily: 'Outfit',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 64, 114, 61)),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Doctors',
                              style: TextStyle(
                                  fontFamily: 'Outfit',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 64, 114, 61)),
                            ),
                          ),
                        ]),
                  ),
                  const Expanded(
                    child: TabBarView(children: [
                      DataEmployee(),
                      DataDoctor(),
                    ]),
                  ),
                ],
              ),
            ),
            DefaultTabController(
              length: 3,
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
                                        icon:
                                            const Icon(Icons.search_rounded))),
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
                              icon: const Icon(
                                  Icons.signal_cellular_alt_outlined),
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
                    "Upload Offers",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 900,
                    child: TabBar(
                        labelColor: Color.fromARGB(255, 64, 114, 61),
                        unselectedLabelColor:
                            Color.fromARGB(255, 141, 137, 137),
                        indicatorColor: Color.fromARGB(255, 64, 114, 61),
                        tabs: [
                          Tab(
                            child: Text(
                              'Company',
                              style: TextStyle(
                                  fontFamily: 'Outfit',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 64, 114, 61)),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Doctors',
                              style: TextStyle(
                                  fontFamily: 'Outfit',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 64, 114, 61)),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Employee',
                              style: TextStyle(
                                  fontFamily: 'Outfit',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 64, 114, 61)),
                            ),
                          )
                        ]),
                  ),
                  const Expanded(
                    child: TabBarView(children: [
                      Company(),
                      Doctor(),
                      Employee(),
                    ]),
                  ),
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
  }
