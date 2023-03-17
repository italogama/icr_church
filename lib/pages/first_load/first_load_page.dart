import 'dart:io';

import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../components/test.dart';

class FirstLoadPage extends StatefulWidget {
  const FirstLoadPage({super.key});

  @override
  State<FirstLoadPage> createState() => _FirstLoadPageState();
}

class _FirstLoadPageState extends State<FirstLoadPage> {
  @override
  void initState() {
    super.initState();
    requestFilePermission(context);
  }

  Future<bool> requestFilePermission(BuildContext context) async {
    bool permissionGranted = await requestNotificationPermission(context);
    if (permissionGranted) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/logo/backicr.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 480,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/logo/logoicr.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
