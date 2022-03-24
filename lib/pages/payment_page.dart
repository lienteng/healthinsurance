import 'package:flutter/material.dart';

class PayMentPage extends StatefulWidget {
  const PayMentPage({Key? key}) : super(key: key);

  @override
  State<PayMentPage> createState() => _PayMentPageState();
}

class _PayMentPageState extends State<PayMentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ຊຳລະເງິນ'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('PayMent Page'),
      ),
    );
  }
}
