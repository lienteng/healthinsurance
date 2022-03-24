import 'package:flutter/material.dart';
import 'package:ui_healthinsurance/pages/dashboardpage.dart';
import 'package:ui_healthinsurance/pages/home_page.dart';
import 'package:ui_healthinsurance/pages/profile_page.dart';
import 'package:ui_healthinsurance/pages/user_page.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItem(context),
            ],
          ),
        ),
      );
}

Widget buildHeader(BuildContext context) => Material(
      color: Colors.amber,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const UserPage()),
          );
        },
        child: Container(
          color: Colors.green,
          padding: EdgeInsets.only(
              top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
          child: Column(children: const [
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 40,
              backgroundImage: NetworkImage(
                  'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50'),
            ),
            SizedBox(height: 12),
            Text(
              'ອາລິສາ ສີຫາລາດ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            Text(
              'olienteng@gmai.com',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            )
          ]),
        ),
      ),
    );
Widget buildMenuItem(BuildContext context) => Container(
    padding: const EdgeInsets.all(8.0),
    child: Wrap(
      children: [
        ListTile(
          title: const Text("ປະການໄພ"),
          leading: IconButton(
            icon: const Icon(Icons.dashboard),
            onPressed: () {},
          ),
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => const HomePage()));
          },
        ),
        ListTile(
          title: const Text("ຂໍຄວາມຊ່ວຍເຫຼືອ"),
          leading: IconButton(
            icon: const Icon(Icons.help_center),
            onPressed: () {},
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.pushNamed(context, '/HelpPage');
          },
        ),
        ListTile(
          title: const Text("ຊຳລະເງິນ"),
          leading: IconButton(
            icon: const Icon(Icons.payment),
            onPressed: () {},
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.pushNamed(context, '/PayMentPage');
          },
        ),
        ListTile(
          title: const Text("ນະໂຍບາຍ"),
          leading: IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.pushNamed(context, '/PolicyPage');
          },
        ),
        ListTile(
          title: const Text("ຕິດຕໍ່ພວກເຮົາ"),
          leading: IconButton(
            icon: const Icon(Icons.contacts_rounded),
            onPressed: () {},
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.pushNamed(context, '/ContactPage');
          },
        ),
        const Divider(
          color: Colors.black,
        ),
        ListTile(
          title: const Text("ອອກຈາກລະບົບ"),
          leading: IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {},
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('ເຕືອນ'),
                actions: <Widget>[
                  TextButton(
                    child: const Text('ບໍ່'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: const Text('ຕົກລົງ'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/LoginPage');
                    },
                  ),
                ],
                content: Text("ທ່ານຕ້ອງການອອກຈາກລະບົບແທ້ບໍ?"),
              ),
            );
          },
        ),
      ],
    ));
