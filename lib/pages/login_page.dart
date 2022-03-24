import 'package:flutter/material.dart';
import 'package:ui_healthinsurance/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? mail = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(children: <Widget>[
              SizedBox(
                child: Image.asset('assets/images/profile.png'),
                height: 150,
              ),
              Container(
                child: const Text(
                  'ລະບົບປະກັນສຸຂະພາບ',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                margin: const EdgeInsets.only(top: 30),
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    // labelText: 'ຊື່ຜູ້ໃຊ້ ຫຼື ອີເມວ',
                    hintText: 'ລະຫັດຜ່ານ',
                    labelStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                margin: const EdgeInsets.only(top: 20),
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    // labelText: 'ລະຫັດຜ່ານ',
                    hintText: 'ລະຫັດຜ່ານ',
                    labelStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                margin: const EdgeInsets.only(top: 20),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                      value: mail,
                      onChanged: (r) {
                        setState(() {
                          mail = r;
                        });
                      },
                    ),
                    const Text(
                      'ຈື່ຂ້ອຍ',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      width: 130,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          padding: const EdgeInsets.all(10),
                          textStyle: const TextStyle(
                            fontSize: 16,
                          )),
                      onPressed: () {
                        Navigator.pushNamed(context, '/ResetPasswordPage');
                      },
                      child: const Text('ລືມລະຫັດຜ່ານ'),
                    )
                  ],
                ),
                margin: const EdgeInsets.only(top: 10),
              ),
              const SizedBox(
                height: 10,
              ),

              Container(
                height: 50,
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                      Color.fromARGB(255, 17, 150, 0),
                      Color.fromARGB(255, 0, 156, 21),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: SizedBox.expand(
                    child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.green,
                  ),
                  onPressed: () async {
                    Navigator.pushNamed(context, '/HomePage');
                  },
                  child: const Text('ເຂົ້າສູ່ລະບົບ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                )),
              ),
              // ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //         minimumSize: const Size(700, 50),
              //         maximumSize: const Size(700, 50),
              //         padding: const EdgeInsets.all(10),
              //         primary: Colors.green,
              //         textStyle: const TextStyle(
              //             fontSize: 20, fontWeight: FontWeight.bold)),
              //     onPressed: () {
              //       Navigator.pushNamed(context, '/HomePage');

              //       // Navigator.of(context).push(MaterialPageRoute(
              //       //     builder: (BuildContext context) => HomePage()));
              //     },
              //     child: Text('ເຂົ້າສູ່ລະບົບ')),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "----------------- ເຂົ້າລະບົບດ້ວຍ -----------------",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "ທ່ານມີບັນຊີແລ້ວບໍ? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.green,
                      padding: const EdgeInsets.all(10),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/ConditionApp');
                    },
                    child: const Text('ລົງທະບຽນ'),
                  ),
                  // Text(
                  //   "Sign Up",
                  //   style: TextStyle(
                  //     color: Colors.green[700],
                  //     fontSize: 16,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                ],
              )
            ])),
      ),
    );
  }
}
