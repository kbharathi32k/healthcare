// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'companydetails.dart';

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
  List<CompanyDetail> companydetail = List.empty(growable: true);

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _compnamecontroller = TextEditingController();
  final TextEditingController _mblnocontroller = TextEditingController();
  final TextEditingController _mailidcontroller = TextEditingController();
  final TextEditingController _conpersoncontroller = TextEditingController();
  final TextEditingController _compaddcontroller = TextEditingController();
  final TextEditingController _typecompcontroller = TextEditingController();
  final TextEditingController _noempcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();
  final TextEditingController _rpasscontroller = TextEditingController();
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
                    String compname = _compnamecontroller.text;
                    String mailid = _mailidcontroller.text;
                    String conperson = _conpersoncontroller.text;
                    String compadd = _compaddcontroller.text;
                    String typecomp = _typecompcontroller.text;
                    String pass = _passcontroller.text;
                    String rpass = _rpasscontroller.text;
                    String mblno = _mblnocontroller.text;
                    String noemp = _noempcontroller.text;

                    if (compname.isNotEmpty && mailid.isNotEmpty) {
                      setState(() {
                        companydetail.add(CompanyDetail(
                            compname: compname,
                            mailid: mailid,
                            compadd: compadd,
                            conperson: conperson,
                            mblno: mblno,
                            noemp: noemp,
                            pass: pass,
                            rpass: rpass,
                            typecomp: typecomp));
                      });
                    }
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
