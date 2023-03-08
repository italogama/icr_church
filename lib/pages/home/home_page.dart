import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:icr_church/components/button_home.dart';

import '../pray/pray_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            children: [
              Container(
                width: 350,
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/logo/logoicr.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ButtonHome(
                            text: 'A igreja',
                            icon: Icons.church,
                            page: const PrayPage()),
                        ButtonHome(
                            text: 'Ministérios',
                            icon: Icons.local_fire_department,
                            page: const PrayPage()),
                        ButtonHome(
                            text: 'Notícias',
                            icon: Icons.newspaper,
                            page: const PrayPage())
                      ]),
                  const SizedBox(height: 30),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ButtonHome(
                            text: '  Culto\nAo Vivo',
                            icon: Icons.videocam,
                            page: const PrayPage()),
                        ButtonHome(
                            text: 'Doações',
                            icon: Icons.volunteer_activism,
                            page: const PrayPage()),
                        ButtonHome(
                            text: 'Vídeos',
                            icon: Icons.play_circle,
                            page: const PrayPage())
                      ]),
                  SizedBox(height: 30),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ButtonHome(
                            text: 'Calendário',
                            icon: Icons.calendar_month,
                            page: const PrayPage()),
                        ButtonHome(
                            text: '      Mural\nde Orações',
                            icon: Icons.content_paste,
                            page: const PrayPage()),
                        ButtonHome(
                            text: '     Plano\nde Oração',
                            icon: Icons.handshake,
                            page: const PrayPage())
                      ])
                ],
              )
            ],
          )),
    );
  }
}
