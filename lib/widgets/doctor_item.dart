import 'package:doctor_appoinment/const.dart';
import 'package:doctor_appoinment/models/doctor_model.dart';
import 'package:flutter/material.dart';

class DoctorItem extends StatelessWidget {
  final Doctor doctor;
  const DoctorItem({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      width: (MediaQuery.of(context).size.width / 2) - 25,
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: grey.withOpacity(0.5),
                blurRadius: 10,
                offset: const Offset(5, 5))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(doctor.image)),
                shape: BoxShape.circle,
                color: Color(doctor.color).withOpacity(0.5)),
          ),
          const SizedBox(height: 20),
          Text('Dr. ${doctor.name}',
              style: roboto.copyWith(
                  fontSize: 14,
                  letterSpacing: 1,
                  color: black,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(doctor.specialist,
              style: roboto.copyWith(
                  letterSpacing: 1,
                  fontSize: 12,
                  color: grey,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.fromLTRB(5, 5, 10, 5),
            decoration: BoxDecoration(
              color: yellow.withOpacity(0.25),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.star,
                  color: yellow,
                  size: 20,
                ),
                const SizedBox(width: 5),
                Text(
                  rate(doctor).toStringAsFixed(1),
                  style: roboto.copyWith(fontSize: 12, color: black),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
