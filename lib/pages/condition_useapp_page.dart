import 'package:flutter/material.dart';

class ConditionApp extends StatefulWidget {
  const ConditionApp({Key? key}) : super(key: key);

  @override
  State<ConditionApp> createState() => _ConditionAppState();
}

class _ConditionAppState extends State<ConditionApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ເງືອນໄຂ'),
          backgroundColor: Colors.green,
          actions: [
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  child: Text('ລາວ'),
                  value: 1,
                ),
                const PopupMenuItem(
                  child: Text('ອັງກິດ'),
                  value: 2,
                ),
                const PopupMenuItem(
                  child: Text('ຈີນ'),
                  value: 3,
                ),
                const PopupMenuItem(
                  child: Text('ຫວຽດນາມ'),
                  value: 4,
                ),
              ];
            }),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              const Text(
                  'ເພຶ່ອເປັນການສ້າງຂະບວນການຂໍ່ານັບຮັບຕ້ອນກອງປະຊູມໃຫຍ່ອົງຄະນະພັກແຂວງ ວຽງຈັນ ຄັ້ງທີ VI ໃຫ້ມີບັນຍາກາດຟົດຟຶ້ນ ແລະ ມີຄວາມໝາຍເລີກເຊີ່ງ ໃນຕອນແລງວັນທີ 16 ພະຈິກ 2020 ຜ່ານມານີ້ ຢູ່ທີ່ເດີນກິລາເປຕັງ ພະແນກຍຸຕິທຳແຂວງ ວຽງຈັນ ໄດ້ຈັດການແຂ່ງຂັນກິລາເປຕັງ ຊິງຂັນຂອງທ່ານຫົວໜ້າພະແນກຍຸຕິທຳແຂວງ ວຽງຈັນ ຜ່ານການແຂ່ງຂັນ ແມ່ນທີມນັກຝຶກອົບຮົມ ໜ່ວຍ 3 ສາມາດຄອງຂັນຊະນະເລີດ, ຮອງຊະນະເລີດແມ່ນທີມນັກຝຶກອົບຮົມໜ່ວຍ 4 ແລະ ອັນດັບ 3 ຮ່ວມແມ່ນທີມນັກຝຶກອົບຮ່ວມ ໜ່ວຍ 1 ແລະ ທີມຄະນະຮັບຜິດຊອບຝຶກອົບຮົມ ໃຫ້ກຽດມອບຂັນລາງວັນຊະນະເລີດໂດຍ ທ່ານ ສີສະຫວາດ ແສງພະຈັນ ຫົວໜ້າພະແນກຍຸຕິທຳແຂວງ ວຽງຈັນ, ໃຫ້ກຽດມອບລາງວັນຮອງຊະນະເລີດແມ່ນທ່ານ ຄຳພັນ ຊະນະເພຶ່ອເປັນການສ້າງຂະບວນການຂໍ່ານັບຮັບຕ້ອນກອງປະຊູມໃຫຍ່ອົງຄະນະພັກແຂວງ ວຽງຈັນ ຄັ້ງທີ VI ໃຫ້ມີບັນຍາກາດຟົດຟຶ້ນ ແລະ ມີຄວາມໝາຍເລີກເຊີ່ງ ໃນຕອນແລງວັນທີ 16 ພະຈິກ 2020 ຜ່ານມານີ້ ຢູ່ທີ່ເດີນກິລາເປຕັງ ພະແນກຍຸຕິທຳແຂວງ ວຽງຈັນ ໄດ້ຈັດການແຂ່ງຂັນກິລາເປຕັງ ຊິງຂັນຂອງທ່ານຫົວໜ້າພະແນກຍຸຕິທຳແຂວງ ວຽງຈັນ ຜ່ານການແຂ່ງຂັນ ແມ່ນທີມນັກຝຶກອົບຮົມ ໜ່ວຍ 3 ສາມາດຄອງຂັນຊະນະເລີດ, ຮອງຊະນະເລີດແມ່ນທີມນັກຝຶກອົບຮົມໜ່ວຍ 4 ແລະ ອັນດັບ 3 ຮ່ວມແມ່ນທີມນັກຝຶກອົບຮ່ວມ ໜ່ວຍ 1 ແລະ ທີມຄະນະຮັບຜິດຊອບຝຶກອົບຮົມ ໃຫ້ກຽດມອບຂັນລາງວັນຊະນະເລີດໂດຍ ທ່ານ ສີສະຫວາດ ແສງພະຈັນ ຫົວໜ້າພະແນກຍຸຕິທຳແຂວງ ວຽງຈັນ, ໃຫ້ກຽດມອບລາງວັນຮອງຊະນະເລີດແມ່ນທ່ານ ຄຳພັນ ຊະນະເພຶ່ອເປັນການສ້າງຂະບວນການຂໍ່ານັບຮັບຕ້ອນກອງປະຊູມໃຫຍ່ອົງຄະນະພັກແຂວງ ວຽງຈັນ ຄັ້ງທີ VI ໃຫ້ມີບັນຍາກາດຟົດຟຶ້ນ ແລະ ມີຄວາມໝາຍເລີກເຊີ່ງ ໃນຕອນແລງວັນທີ 16 ພະຈິກ 2020 ຜ່ານມານີ້ ຢູ່ທີ່ເດີນກິລາເປຕັງ ພະແນກຍຸຕິທຳແຂວງ ວຽງຈັນ ໄດ້ຈັດການແຂ່ງຂັນກິລາເປຕັງ ຊິງຂັນຂອງທ່ານຫົວໜ້າພະແນກຍຸຕິທຳແຂວງ ວຽງຈັນ ຜ່ານການແຂ່ງຂັນ ແມ່ນທີມນັກຝຶກອົບຮົມ ໜ່ວຍ 3 ສາມາດຄອງຂັນຊະນະເລີດ, ຮອງຊະນະເລີດແມ່ນທີມນັກຝຶກອົບຮົມໜ່ວຍ 4 ແລະ ອັນດັບ 3 ຮ່ວມແມ່ນທີມນັກຝຶກອົບຮ່ວມ ໜ່ວຍ 1 ແລະ ທີມຄະນະຮັບຜິດຊອບຝຶກອົບຮົມ ໃຫ້ກຽດມອບຂັນລາງວັນຊະນະເລີດໂດຍ ທ່ານ ສີສະຫວາດ ແສງພະຈັນ ຫົວໜ້າພະແນກຍຸຕິທຳແຂວງ ວຽງຈັນ, ໃຫ້ກຽດມອບລາງວັນຮອງຊະນະເລີດແມ່ນທ່ານ ຄຳພັນ ຊະນະ'),
              SizedBox(
                height: 20,
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
                    Navigator.pushNamed(context, '/PhoneNumberPage');
                  },
                  child: const Text('ຍອມຮັບ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                )),
              ),
            ],
          ),
        ));
  }
}
