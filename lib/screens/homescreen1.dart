import 'package:flutter/material.dart';

import '../components/customCont.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 25,
            mainAxisSpacing: 25,
          ),
          children: [
            NeuBox(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(Icons.favorite_outline_rounded,
                  size: 28, color: Colors.grey[50]),
              const SizedBox(width: 5),
              Icon(Icons.favorite_rounded, size: 28, color: Colors.grey[50])
            ])),
            const PlainBox(
                icon1: Icons.photo,
                icon2: Icons.photo_camera_outlined,
                icon3: Icons.calculate_rounded,
                icon4: Icons.settings_rounded),
            const PlainBox(
                icon1: Icons.camera_rounded,
                icon2: Icons.attach_money_rounded,
                icon3: Icons.calculate_rounded,
                icon4: Icons.location_on_outlined),
            NeuBox(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(Icons.apple_rounded, size: 30, color: Colors.grey[50]),
            ])),
            PlainBox2(text: 'F L U T T E R'),
            const PlainBox(
                icon1: Icons.play_arrow_rounded,
                icon2: Icons.back_hand_rounded,
                icon3: Icons.do_not_disturb_on_rounded,
                icon4: Icons.wifi_off_rounded),
          ]),
    );
  }
}

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 25,
            mainAxisSpacing: 25,
          ),
          children: const [
            PlainBox3(icon: Icons.access_time_rounded),
            PlainBox(
                icon1: Icons.photo,
                icon2: Icons.photo_camera_outlined,
                icon3: Icons.calculate_rounded,
                icon4: Icons.settings_rounded),
            PlainBox(
                icon1: Icons.camera_rounded,
                icon2: Icons.attach_money_rounded,
                icon3: Icons.calculate_rounded,
                icon4: Icons.location_on_outlined),
            PlainBox3(icon: Icons.bluetooth_disabled_rounded),
            PlainBox3(icon: Icons.search_rounded),
            PlainBox(
                icon1: Icons.play_arrow_rounded,
                icon2: Icons.back_hand_rounded,
                icon3: Icons.do_not_disturb_on_rounded,
                icon4: Icons.wifi_off_rounded),
          ]),
    );
    ;
  }
}
