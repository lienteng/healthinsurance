// import 'package:flutter/material.dart';
// import 'package:ui_healthinsurance/pages/dashboardpage.dart';
// import 'package:ui_healthinsurance/pages/loginpage.dart';
// import 'package:ui_healthinsurance/pages/profilepage.dart';
// import 'package:ui_healthinsurance/pages/settingpage.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   int _selectedIndex = 0;
//   static const List<Widget> _pages = <Widget>[
//     Dashboard(),
//     ProfilePage(),
//     SettingPage(),
//     ProfilePage(),
//     SettingPage(),
//     LoginPage(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('ລະບົບປະກັນສຸຂະພາບ')),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.green,
//               ),
//               child: Text('Drawer Header'),
//             ),
//             ListTile(
//               title: const Text("Profile"),
//               leading: IconButton(
//                 icon: const Icon(Icons.account_circle),
//                 onPressed: () {},
//               ),
//               onTap: () {
//                 Navigator.of(context).pop();
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (BuildContext context) => const ProfilePage()));
//               },
//             ),
//             ListTile(
//               title: const Text("Profile"),
//               leading: IconButton(
//                 icon: const Icon(Icons.account_circle),
//                 onPressed: () {},
//               ),
//               onTap: () {
//                 Navigator.of(context).pop();
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (BuildContext context) => ProfilePage()));
//               },
//             ),
//             ListTile(
//               title: const Text("Profile"),
//               leading: IconButton(
//                 icon: const Icon(Icons.account_circle),
//                 onPressed: () {},
//               ),
//               onTap: () {
//                 Navigator.of(context).pop();
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (BuildContext context) => const ProfilePage()));
//               },
//             ),
//             ListTile(
//               title: const Text("Profile"),
//               leading: IconButton(
//                 icon: const Icon(Icons.account_circle),
//                 onPressed: () {},
//               ),
//               onTap: () {
//                 Navigator.of(context).pop();
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (BuildContext context) => ProfilePage()));
//               },
//             ),
//             ListTile(
//               title: const Text("Profile"),
//               leading: IconButton(
//                 icon: const Icon(Icons.account_circle),
//                 onPressed: () {},
//               ),
//               onTap: () {
//                 Navigator.of(context).pop();
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (BuildContext context) => ProfilePage()));
//               },
//             ),
//             ListTile(
//               title: const Text("Profile"),
//               leading: IconButton(
//                 icon: Icon(Icons.account_circle),
//                 onPressed: () {},
//               ),
//               onTap: () {
//                 Navigator.of(context).pop();
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (BuildContext context) => ProfilePage()));
//               },
//             ),
//             ListTile(
//               title: const Text("Profile"),
//               leading: IconButton(
//                 icon: const Icon(Icons.account_circle),
//                 onPressed: () {},
//               ),
//               onTap: () {
//                 Navigator.of(context).pop();
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (BuildContext context) => ProfilePage()));
//               },
//             ),
//             const Divider(
//               color: Colors.black,
//             ),
//             ListTile(
//               title: const Text("Logout"),
//               leading: IconButton(
//                 icon: Icon(Icons.exit_to_app),
//                 onPressed: () {},
//               ),
//               onTap: () {
//                 Navigator.pushNamed(context, '/LoginPage');
//               },
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: _pages[_selectedIndex],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.green,
//         selectedFontSize: 12,
//         selectedIconTheme: const IconThemeData(color: Colors.white, size: 35),
//         selectedItemColor: Colors.white,
//         selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
//         unselectedFontSize: 12,
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.dashboard),
//             label: 'ໜ້າຫຼັກ',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'ໂປຣໄຟລ',
//           ),
//           // BottomNavigationBarItem(
//           //   icon: Icon(Icons.message),
//           //   label: 'ຂໍ້ຄວາມ',
//           // ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'ຕັ້ງຄ່າ',
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:ui_healthinsurance/pages/dashboardpage.dart';
import 'package:ui_healthinsurance/pages/logation_page.dart';
import 'package:ui_healthinsurance/pages/login_page.dart';
import 'package:ui_healthinsurance/pages/profile_page.dart';
import 'package:ui_healthinsurance/pages/setting_page.dart';
import 'package:ui_healthinsurance/widget/drawer_widget.dart';
import 'package:ui_healthinsurance/widget/sizeconfig.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  List<Widget> _listPages = [
    Dashboard(),
    LocationPage(),
    Dashboard(),
    ProfilePage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Health Insurance'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const NavigationDrawer(),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: const <Widget>[
          Icon(Icons.home_outlined, color: Colors.white, size: 30),
          Icon(Icons.location_on, color: Colors.white, size: 30),
          Icon(Icons.message_outlined, color: Colors.white, size: 30),
          Icon(Icons.perm_identity, color: Colors.white, size: 30),
          Icon(
            Icons.settings,
            color: Colors.white,
            size: 30,
          ),
        ],
        color: Colors.green,
        buttonBackgroundColor: Colors.green,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: _listPages[_page],
    );
  }
}
