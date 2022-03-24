import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:ui_healthinsurance/pages/otp_page.dart';
import 'package:ui_healthinsurance/pages/otp_sigup.page.dart';

class PhoneNumberPage extends StatelessWidget {
  const PhoneNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ເບີໂທລະສັບ'),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          // focusedBorder: const OutlineInputBorder(
                          //   borderSide: BorderSide(
                          //       color: Colors.greenAccent, width: 3.0),
                          // ),
                          // enabledBorder: const OutlineInputBorder(
                          //   borderSide:
                          //       BorderSide(color: Colors.red, width: 3.0),
                          // ),

                          hintText: "ເບີໂທ ຫຼື ອີເມວ",
                          // errorText: 'Error Text',
                          labelStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 480,
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
                            // Navigator.pushNamed(context, '/Registration');
                            final signature =
                                await SmsAutoFill().getAppSignature;
                            print(signature);
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return OtpSignup();
                            }));
                          },
                          child: const Text('ສົ່ງ OTP',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        )),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
