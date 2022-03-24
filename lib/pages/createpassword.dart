import 'package:flutter/material.dart';

class CreatePassWord extends StatefulWidget {
  const CreatePassWord({Key? key}) : super(key: key);

  @override
  State<CreatePassWord> createState() => _CreatePassWordState();
}

class _CreatePassWordState extends State<CreatePassWord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ສ້າງລະຫັດຜ່ານ'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'ລະຫັດຜ່ານ',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'ຢືນຢັນລະຫັດຜ່ານ',
              ),
            ),
            SizedBox(
              height: 450,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(700, 50),
                  maximumSize: const Size(700, 50),
                  padding: const EdgeInsets.all(10),
                  primary: Colors.green,
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.pushNamed(context, '/SignUpPage');
              },
              child: const Text('ໄປຕໍ່'),
            )
          ],
        ),
      ),
    );
  }
}
