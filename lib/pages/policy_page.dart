import 'package:flutter/material.dart';

class PolicyPage extends StatefulWidget {
  const PolicyPage({Key? key}) : super(key: key);

  @override
  State<PolicyPage> createState() => _PolicyPageState();
}

class _PolicyPageState extends State<PolicyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ນະໂຍບາຍ'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('PolicyPage'),
      ),
    );
  }
}
