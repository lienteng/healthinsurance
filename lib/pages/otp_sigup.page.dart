import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class OtpSignup extends StatefulWidget {
  @override
  _OtpSignupState createState() => _OtpSignupState();
}

class _OtpSignupState extends State<OtpSignup> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _listOPT();
  }

  @override
  Widget build(BuildContext context) {
    var length;
    return Scaffold(
      appBar: AppBar(
        title: Text("Auto SMS Read"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("OTP"),
              const SizedBox(
                height: 20,
              ),
              PinFieldAutoFill(
                decoration: UnderlineDecoration(
                  textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                  colorBuilder:
                      FixedColorBuilder(Colors.black.withOpacity(0.3)),
                ),
                codeLength: 6,
                onCodeSubmitted: (code) {},
                onCodeChanged: (code) {
                  // if (code.length == 6) {
                  //   FocusScope.of(context).requestFocus(FocusNode());
                  // }
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("ທ່ານໄດ້ຮັບລະຫັດ code ແລ້ວບໍ?"),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.blue,
                      padding: const EdgeInsets.all(10),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      _listOPT();
                    },
                    child: Text("ສົ່ງລະຫັດໃໝ່"),
                  ),
                ],
              ),
              // Expanded(
              //   child: ListView.builder(
              //     itemCount: _listOPT.length,
              //     itemBuilder: (context, index) {
              //       return ListTile(
              //         title: Text(_listOPT[index]),
              //       );
              //     },
              //   ),
              // ),
              const SizedBox(
                height: 380,
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
                    Navigator.pushNamed(context, '/CreatePassWord');
                  },
                  child: const Text('Next',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _listOPT() async {
    await SmsAutoFill().listenForCode;
  }
}
