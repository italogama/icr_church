import 'package:flutter/cupertino.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:app_settings/app_settings.dart';

Future<bool> requestNotificationPermission(BuildContext context) async {
  PermissionStatus status = await Permission.notification.request();
  if (status == PermissionStatus.granted) {
    return true;
  } else if (status == PermissionStatus.denied) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text('Igreja Cristã would like to send you notifications'),
        content: Text(
            'Notifications may include alerts, sounds, and icon badges. These can be configured in Settings.'),
        actions: <Widget>[
          CupertinoButton(
            child: Text('Dont Allow'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          CupertinoButton(
            child: Text('Allow'),
            onPressed: () {
              // Navigate to the notification settings screen
              AppSettings.openNotificationSettings();
            },
          ),
        ],
      ),
    );
    return false;
  } else {
    // Permission is permanently denied
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text('Notification Permission Required'),
        content: Text(
            'Please enable notification permission in the device settings.'),
        actions: <Widget>[
          CupertinoButton(
            child: Text('Dont allow'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          CupertinoButton(
            child: Text('Allow'),
            onPressed: () {
              // Navigate to the app settings screen
              AppSettings.openNotificationSettings();
            },
          ),
        ],
      ),
    );
    return false;
  }
}
