import 'package:flutter/material.dart';

class Doctor extends StatefulWidget {
  const Doctor({super.key});

  @override
  State<Doctor> createState() => _MyAddState();
}

class _MyAddState extends State<Doctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 45, right: 45),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                  color: Colors.black12,
                  height: 210,
                  width: 400,
                  child: Image.asset('assets/noimage.jpg')),
              const SizedBox(
                height: 30,
              ),
              Container(
                  color: Colors.black12,
                  height: 210,
                  width: 400,
                  child: Image.asset('assets/noimage.jpg')),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(50),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
                width: 500,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Type here your title",
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 100,
                width: 500,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Add your description",
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    height: 35,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 64, 114, 61),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: () {},
                      child: const Text('Upload',
                          style: TextStyle(
                              fontFamily: 'Outfit',
                              color: Colors.white,
                              fontSize: 16)),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    height: 35,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 64, 114, 61),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: () {},
                      child: const Text('Cancel',
                          style: TextStyle(
                              fontFamily: 'Outfit',
                              color: Colors.white,
                              fontSize: 16)),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 40,
                width: 500,
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        color: Colors.black),
                    border: OutlineInputBorder(),
                    hintText: "Type here your title",
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 100,
                width: 500,
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        color: Colors.black),
                    border: OutlineInputBorder(),
                    hintText: "Add your description",
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    height: 35,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 64, 114, 61),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: () {},
                      child: const Text('Upload',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 16)),
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
                          backgroundColor:
                              const Color.fromARGB(255, 64, 114, 61),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: () {},
                      child: const Text('Cancel',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 16)),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
