import 'package:flutter/material.dart';
import 'companydetails.dart';

class Company extends StatefulWidget {
  const Company({super.key});

  @override
  State<Company> createState() => _MyAddState();
}

class _MyAddState extends State<Company> {
  List<CompanyDetail> companydetail = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          ListView.builder(
            itemCount: companydetail.length,
            itemBuilder:(context, index) => getRow(index),),
        ],
      )
                
);
  }
  
  
  Widget getRow(int index) {
    return ListTile(
      title: Column(
        children: [
          Text(companydetail[index].compname),
          Text(companydetail[index].mailid),
          Text(companydetail[index].compadd),
          Text(companydetail[index].mblno),
          Text(companydetail[index].conperson),
          Text(companydetail[index].noemp),
          Text(companydetail[index].pass),
          Text(companydetail[index].rpass),
          Text(companydetail[index].typecomp),
        ],
      ),
    );
  }

  
}
