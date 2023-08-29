import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final Widget? child;
  const NeuBox({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.brown[300],
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.brown.shade200,
                offset: Offset(-4, -4),
                blurRadius: 10,
                spreadRadius: 1.0),
            BoxShadow(
                color: Colors.brown.shade400,
                offset: Offset(4, 4),
                blurRadius: 10,
                spreadRadius: 1.0),
          ]),
      child: child,
    );
  }
}

class PlainBox extends StatelessWidget {
  final IconData icon1;
  final IconData icon2;
  final IconData icon3;
  final IconData icon4;

  const PlainBox(
      {required this.icon1,
      required this.icon2,
      required this.icon3,
      required this.icon4});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.brown[300],
          borderRadius: BorderRadius.circular(15),
          boxShadow: const []),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomSmallCont(icon: icon1),
            CustomSmallCont(icon: icon2),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomSmallCont(icon: icon3),
            CustomSmallCont(icon: icon4),
          ])
        ],
      ),
    );
  }
}
class PlainBox2 extends StatelessWidget {
  final String text;
  const PlainBox2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color:Colors.brown[700],
      ),
      child:Center(
        child:Text(text)
      )
    );
  }
}
class PlainBox3 extends StatelessWidget {
  final IconData icon;
  const PlainBox3({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.brown[700],
        ),
        child: Center(child: Icon(icon,size:22,color:Colors.grey[50])));
  }
}

class CustomSmallCont extends StatelessWidget {
  final IconData icon;
  const CustomSmallCont({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.brown[700], borderRadius: BorderRadius.circular(10)),
        child: Icon(icon, size: 20, color: Colors.grey[50]));
  }
}
