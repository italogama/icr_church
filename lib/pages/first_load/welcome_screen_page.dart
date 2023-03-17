import 'dart:io';

import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../components/test.dart';

class WelcomeScreenPage extends StatefulWidget {
  const WelcomeScreenPage({super.key});

  @override
  State<WelcomeScreenPage> createState() => _WelcomeScreenPageState();
}

class _WelcomeScreenPageState extends State<WelcomeScreenPage> {
  bool isCheck = false;

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
        child: Container(
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 140,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/logo/logoicr.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'Welcome to \nIgreja Cristã em Recife',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  value: isCheck,
                                  checkColor:
                                      Colors.white, // color of tick Mark
                                  activeColor: Colors.red,
                                  fillColor:
                                      MaterialStateProperty.all(Colors.red),
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isCheck = value!;
                                    });
                                  }),
                              const Text(
                                  'I am aware and agree with the privacy \npolicy and terms of service',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          const SizedBox(height: 20),
                          TextButton(
                            onPressed: () {
                              // Do something when the button is pressed
                            },
                            child: Container(
                              width: double
                                  .infinity, // Sets the width to the width of the screen
                              height: 50.0, // Sets the height to 50.0 pixels
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Do something when the button is pressed
                            },
                            child: const Center(
                              child: Text(
                                'CONTINUE SEM LOGAR',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
