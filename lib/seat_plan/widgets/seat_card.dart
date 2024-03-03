import 'package:flutter/material.dart';

class SeatCard extends StatelessWidget {
  final String number;
  const SeatCard({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black45,width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(number,style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),),
    );
  }
}
