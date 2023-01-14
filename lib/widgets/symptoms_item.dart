import 'package:doctor_appoinment/const.dart';
import 'package:flutter/material.dart';

class SymptomItem extends StatelessWidget {
  final String image, label;
  const SymptomItem({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
      decoration: BoxDecoration(
          color: grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.asset(
            'assets/$image',
            width: 24,
            height: 24,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            label,
            style:
                roboto.copyWith(fontSize: 16, color: black, letterSpacing: 1),
          ),
        ],
      ),
    );
  }
}
