import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_healthinsurance/widget/MyTextfield.dart';
import 'package:ui_healthinsurance/widget/mybutton.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  int? _groupg = 0;
  int? _groupd = 0;
  File? image;
  final _formKey = GlobalKey<FormState>();
  // late TextEditingController _namecontroller = TextEditingController();

  Future _getFromCamera(ImageSource source) async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: source,
      maxWidth: 600,
      maxHeight: 600,
    );
    setState() {
      image = File(pickedFile!.path);
      Navigator.pop(context);
    }
  }

  Future _getFromgallery(ImageSource source) async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: source,
      maxWidth: 600,
      maxHeight: 600,
    );
    setState() {
      image = File(pickedFile!.path);
      Navigator.pop(context);
    }
  }

  // Future _getFromCamera(ImageSource source) async {
  //   try {
  //     final Image = await ImagePicker().pickImage(
  //       source: source,
  //     );
  //     if (Image != null) return;
  //     final imageTemporary = File(Image!.path);
  //     setState(() => image = imageTemporary);
  //   } on PlatformException catch (e) {
  //     print("Error: ${e.message}");
  //   }
  // }

  // Future _getFromgallery(ImageSource source) async {
  //   try {
  //     final Image = await ImagePicker().pickImage(
  //       source: source,
  //     );
  //     if (Image != null) return;
  //     final imageTemporary = File(Image!.path);
  //     setState(() => image = imageTemporary);
  //   } on PlatformException catch (e) {
  //     print("Error: ${e.message}");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ລົງທະບຽນ'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // MyTextField(
              //     hint: "hint",
              //     icon: Icons.person,
              //     validator: (value) {
              //       return value!.isEmpty ? "Please Enter A Title" : null;
              //     },
              //     textEditingController: _namecontroller),

              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'ຊື່ແທ້',
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'ນາມສະກຸນ',
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'ເພດ:',
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 0,
                          groupValue: _groupg,
                          onChanged: (dynamic g) {
                            setState(() {
                              _groupg = g;
                            });
                          })
                    ],
                  ),
                  Text('ຍິງ'),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: _groupg,
                          onChanged: (dynamic t) {
                            setState(() {
                              _groupg = t;
                            });
                          })
                    ],
                  ),
                  Text('ຊາຍ'),
                ],
              ),

              // SizedBox(
              //   height: 20,
              // ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'ວັນເດືອນປີເກີດ',
                ),
              ),
              Row(
                children: const [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'ເລກທີ່ພາຣສະປໍ',
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'ຮູບແບບພາສະປໍ',
                      ),
                    ),
                  ),
                ],
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'ມາຈາກປະເທດ',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'ເອກະສານອື່ນໆ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              Container(),
              Row(
                children: [
                  Row(
                    children: [
                      Radio(
                          value: 0,
                          groupValue: _groupd,
                          onChanged: (dynamic d) {
                            setState(() {
                              _groupd = d;
                            });
                          })
                    ],
                  ),
                  Text('ບັດປະຈຳຕົວ'),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: _groupd,
                          onChanged: (dynamic d) {
                            setState(() {
                              _groupd = d;
                            });
                          })
                    ],
                  ),
                  Text('ສຳມະໂນຄົວ'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 200,
                width: double.infinity,
                child: image != null
                    ? Image.file(
                        image!,
                        width: 200,
                        height: 200,
                      )
                    : Container(),

                //   SizedBox(
                //         height: 200,
                //     width: 200,
                //     child: Image.file(ImageFile!),
                //   )
                // : const SizedBox(
                //     height: 20,
                //   ),
                // Image.asset("assets/images/profile.png"):
                //   DecorationImage(
                //     radius: 120,
                //     backgroundColor: Color.fromARGB(255, 117, 117, 117),
                //     child: Text("ກະລຸນາເລືອກຮູບພາບ"),
                //   )
                // : DecorationImage(
                //     radius: 120,
                //     backgroundColor: Colors.yellow,
                //     child: Image.file(ImageFile!),
                //   ),

                // const Text('ພາບບັດປະຈຳຕົວ')
                // : Image.file(Image),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      _getFromCamera(ImageSource.camera);
                    },
                    icon: const Icon(
                      Icons.camera_alt,
                      size: 40.0,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        _getFromgallery(ImageSource.gallery);
                      },
                      icon: const Icon(
                        Icons.photo_library,
                        size: 40.0,
                      )),
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              // ImageFile != null
              //     ? SizedBox(
              //         height: 200,
              //         width: 200,
              //         child: Image.file(ImageFile!),
              //       )
              //     : const SizedBox(
              //         height: 20,
              //       ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     IconButton(
              //       onPressed: () {
              //         _getFromCamera();
              //       },
              //       icon: const Icon(
              //         Icons.camera_alt,
              //         size: 40.0,
              //       ),
              //     ),
              //     IconButton(
              //         onPressed: () {},
              //         icon: const Icon(
              //           Icons.photo_library,
              //           size: 40.0,
              //         )),
              //   ],
              // ),

              // const SizedBox(
              //   height: 20,
              // ),

              const SizedBox(
                height: 20,
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
                  Navigator.pushNamed(context, '/LoginPage');
                },
                child: const Text('ລົງທະບຽນ'),
              ),
              // MyButton(
              //   color: Colors.deepPurple,
              //   width: 80.w,
              //   title: 'Login',
              //   func: () {
              //     Navigator.pushNamed(context, '/LoginPage');
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
