import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ios_clone/screens/unlockscreen.dart';
import 'package:slide_to_act/slide_to_act.dart';

class LockScreen extends StatelessWidget {
  const LockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[300],
        body: SafeArea(
          child: Center(
            child: Column(children: [
              Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.lock, size: 22, color: Colors.grey[50]),
                      SizedBox(height: 15),
                      Text(
                        '4:22',
                        style: TextStyle(fontSize: 80, height: 1),
                      ),
                      Text('Wednesday, 6 July',
                          style: TextStyle(fontSize: 14, height: 0.9))
                    ],
                  )),
              Expanded(
                  flex: 3,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('c r e a t e d  w i t h  F l u t t e r '),
                        Icon(Icons.favorite_outline_rounded,
                            size: 20, color: Colors.grey[50])
                      ])),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SlideAction(
                  onSubmit: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UnlockScreen()));
                  },
                  submittedIcon: Icon(Icons.lock_open_rounded,
                      size: 22, color: Colors.grey[50]),
                  text: '    S L I D E  T O  U N L O C K',
                  textStyle: GoogleFonts.poppins(fontSize: 14),
                  height: 60,
                  elevation: 0,
                  borderRadius: 10,
                  outerColor: Colors.brown[400],
                  innerColor: Colors.brown[700],
                  sliderButtonIcon:
                      Icon(Icons.lock, size: 22, color: Colors.grey[50]),
                  sliderButtonIconPadding: 12,
                ),
              ))
            ]),
          ),
        ));
  }
}
