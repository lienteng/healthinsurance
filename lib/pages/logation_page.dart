import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
// import 'package:location_example/change_settings.dart';
// import 'package:location_example/enable_in_background.dart';
// import 'package:url_launcher/url_launcher.dart';

// import 'change_notification.dart';
// import 'get_location.dart';
// import 'listen_location.dart';
// import 'permission_status.dart';
// import 'service_enabled.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  final Location location = Location();

  Future<void> _showInfoDialog() {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('ຕຳແໜ່ງຂອງທ່ານ'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                const Text('Created by Guillaume Bernos'),
                InkWell(
                  child: const Text(
                    'https://www.google.la/maps/@17.9494104,102.679045,15z?hl=en',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () => launch(
                      'https://www.google.la/maps/@17.9494104,102.679045,15z?hl=en'),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(widget.title!),
        title: Text('ໍlocation'),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: _showInfoDialog,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: const <Widget>[
              // PermissionStatusWidget(),
              // Divider(height: 32),
              // ServiceEnabledWidget(),
              // Divider(height: 32),
              // GetLocationWidget(),
              // Divider(height: 32),
              // ListenLocationWidget(),
              // Divider(height: 32),
              // ChangeSettings(),
              // Divider(height: 32),
              // EnableInBackgroundWidget(),
              // Divider(height: 32),
              // ChangeNotificationWidget()
            ],
          ),
        ),
      ),
    );
  }

  launch(String s) {}
}
