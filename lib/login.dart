import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/mywidget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'usernotfound') {
        const Text('No user found for that email');
      }
    }
    return user;
  }
  bool _obscuretext = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset('assets/plus.jpeg'),
              ),
            ),
            const Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'A ',
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 27, 131, 30))),
              TextSpan(
                  text: 'G A N    ',
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 27, 131, 30))),
              TextSpan(
                  text: 'H ',
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 27, 131, 30))),
              TextSpan(
                  text: 'E A L T H C A R E    ',
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 27, 131, 30))),
              TextSpan(
                  text: 'S ',
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 27, 131, 30))),
              TextSpan(
                  text: 'E R V I C E S',
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 27, 131, 30)))
            ])),
            const SizedBox(height: 40),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    width: 280,
                    child: TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email cannot be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Enter Your Username/Email',
                          labelStyle: const TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    width: 280,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password cannot be empty';
                        }
                        return null;
                      },
                      controller: _passwordController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscuretext = !_obscuretext;
                              });
                            },
                            child: Icon(_obscuretext
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          labelText: 'Enter Your Password',
                          labelStyle: const TextStyle(
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              color: Colors.black)),
                      obscureText: _obscuretext,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  const Text(
                    'Change Password',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        decoration: TextDecoration.underline),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  const SizedBox(height: 20),
                 SizedBox(
                          height: 50,
                          width: 280,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 64, 114, 61),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            onPressed: () async{
                              User? user = await loginUsingEmailPassword(email: _emailController.text, password: _passwordController.text, context: context);
                              const Text('user');
                              if(user != null){
                                // ignore: use_build_context_synchronously
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const MyWidget()));
                              }
                              },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
