// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
  final _formKey = GlobalKey<FormState>();
  late String _compname,
      _mailid,
      _conperson,
      _compadd,
      _typecomp,
      _pass,
      _rpass;
  late int _mblno, _noemp;
  final TextEditingController _compnamecontroller = TextEditingController();
  final TextEditingController _mblnocontroller = TextEditingController();
  final TextEditingController _mailidcontroller = TextEditingController();
  final TextEditingController _conpersoncontroller = TextEditingController();
  final TextEditingController _compaddcontroller = TextEditingController();
  final TextEditingController _typecompcontroller = TextEditingController();
  final TextEditingController _noempcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();
  final TextEditingController _rpasscontroller = TextEditingController();

  getCompname(compname) {
    _compname = compname;
  }

  getMblno(mblno) {
    _mblno = mblno;
  }

  getMailid(mailid) {
    _mailid = mailid;
  }

  getConperson(conperson) {
    _conperson = conperson;
  }

  getCompadd(compadd) {
    _compadd = compadd;
  }

  getTypecomp(typecomp) {
    _typecomp = typecomp;
  }

  getNoemp(noemp) {
    _noemp = noemp;
  }

  getPass(pass) {
    _pass = pass;
  }

  getRpass(rpass) {
    _rpass = rpass;
  }

  createData() {
    const Text('created....');
    DocumentReference documentReference =
        FirebaseFirestore.instance.collection("Company Account").doc(_compname);
    Map<String, dynamic> students = {
      "Company Name": _compname,
      "Mobile Number": _mblno,
      "Mail ID": _mailid,
      "Contact Person": _conperson,
      "Company Address": _compadd,
      "Type of Company": _typecomp,
      "Number of Employees": _noemp,
      "Password": _pass,
      "Re-Enter Password": _rpass
    };
    documentReference.set(students).whenComplete(() {
      Text('$_compname  created');
      Text('$_mblno  created');
      Text('$_mailid  created');
      Text('$_conperson  created');
      Text('$_compadd  created');
      Text('$_typecomp created');
      Text('$_noemp created');
      Text('$_pass created');
      Text('$_rpass created');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: Row(children: [
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
              SizedBox(
                width: 490,
                height: 40,
                child: TextFormField(
                  controller: _compnamecontroller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String compname) {
                    getCompname(compname);
                  },
                ),
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
              Row(children: [
                SizedBox(
                  width: 220,
                  height: 40,
                  child: TextFormField(
                      controller: _mblnocontroller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      )),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 250,
                  height: 40,
                  child: TextFormField(
                    controller: _mailidcontroller,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
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
              SizedBox(
                width: 490,
                height: 40,
                child: TextFormField(
                    controller: _conpersoncontroller,
                    decoration: const InputDecoration(
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
              SizedBox(
                width: 490,
                height: 200,
                child: TextFormField(
                    controller: _compaddcontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    )),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10, right: 15, top: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Type Of Company',
              style: myTextStyle,
            ),
            const SizedBox(
              height: 3,
            ),
            SizedBox(
              width: 490,
              height: 40,
              child: TextFormField(
                controller: _typecompcontroller,
                decoration: const InputDecoration(border: OutlineInputBorder()),
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
            SizedBox(
              width: 490,
              height: 40,
              child: TextFormField(
                controller: _noempcontroller,
                decoration: const InputDecoration(
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
              child: TextFormField(
                controller: _passcontroller,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscuretext = !_obscuretext;
                      });
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
              child: TextFormField(
                controller: _rpasscontroller,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscuretext1 = !_obscuretext1;
                      });
                    },
                    child: Icon(_obscuretext1
                        ? Icons.visibility
                        : Icons.visibility_off),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 35,
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 64, 114, 61),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () async {
                    _compnamecontroller.value.text.isNotEmpty;
                    _mblnocontroller.value.text.isNotEmpty;
                    _mailidcontroller.value.text.isNotEmpty;
                    _conpersoncontroller.value.text.isNotEmpty;
                    _compaddcontroller.value.text.isNotEmpty;
                    _typecompcontroller.value.text.isNotEmpty;
                    _noempcontroller.value.text.isNotEmpty;
                    _passcontroller.value.text.isNotEmpty;
                    _rpasscontroller.value.text.isNotEmpty
                        ? createData()
                        : null;
                  },
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
            ),
          ]),
        ),
      ]),
    ));
  }
}


                  onPressed: () async {
                    _compnamecontroller.value.text.isNotEmpty;
                    _mblnocontroller.value.text.isNotEmpty;
                    _mailidcontroller.value.text.isNotEmpty;
                    _conpersoncontroller.value.text.isNotEmpty;
                    _compaddcontroller.value.text.isNotEmpty;
                    _typecompcontroller.value.text.isNotEmpty;
                    _noempcontroller.value.text.isNotEmpty;
                    _passcontroller.value.text.isNotEmpty;
                    _rpasscontroller.value.text.isNotEmpty
                        ? createData()
                        : null;
