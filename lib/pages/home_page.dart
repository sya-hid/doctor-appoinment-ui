import 'package:doctor_appoinment/const.dart';
import 'package:doctor_appoinment/models/doctor_model.dart';
import 'package:doctor_appoinment/models/symptom_model.dart';
import 'package:doctor_appoinment/pages/detail_page.dart';
import 'package:doctor_appoinment/widgets/doctor_item.dart';
import 'package:doctor_appoinment/widgets/symptoms_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Elsie Adkins',
                      style: roboto.copyWith(
                          fontSize: 38,
                          color: black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/hand.png',
                      width: 42,
                      height: 42,
                    )
                  ],
                ),
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                        "https://robohash.org/atmaioreseum.png?size=100x100&set=set1",
                      )),
                      shape: BoxShape.circle,
                      color: yellow.withOpacity(0.5)),
                )
              ],
            ),
          ),
          const SizedBox(height: 26),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  width: (MediaQuery.of(context).size.width / 2) - 25,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: purple.withOpacity(0.5),
                        blurRadius: 10,
                        offset: const Offset(5, 5))
                  ], color: purple, borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(14),
                        decoration: const BoxDecoration(
                          color: white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: purple,
                        ),
                      ),
                      const SizedBox(height: 38),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Clinic Visit',
                            style: roboto.copyWith(
                                color: white, fontSize: 18, letterSpacing: 1),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Make an appoinment',
                            style: roboto.copyWith(
                                color: white, fontSize: 14, letterSpacing: 1),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 18),
                Container(
                  padding: const EdgeInsets.all(16),
                  width: (MediaQuery.of(context).size.width / 2) - 25,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: grey.withOpacity(0.5),
                        blurRadius: 10,
                        offset: const Offset(5, 5))
                  ], color: white, borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: purple.withOpacity(0.15),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.home_filled,
                          color: purple,
                        ),
                      ),
                      const SizedBox(height: 38),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Home Visit',
                            style: roboto.copyWith(
                                color: black.withOpacity(0.5),
                                fontSize: 18,
                                letterSpacing: 1),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Call the doctor home',
                            style: roboto.copyWith(
                                color: black.withOpacity(0.5),
                                fontSize: 14,
                                letterSpacing: 1),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 38),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'What are your symptoms?',
              style: roboto.copyWith(
                  fontSize: 22,
                  color: black,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                ...List.generate(
                    symptoms.length,
                    (index) => Padding(
                          padding: index == 0
                              ? const EdgeInsets.only(left: 16, right: 16)
                              : const EdgeInsets.only(right: 16),
                          child: SymptomItem(
                            image: symptoms[index]['image'],
                            label: symptoms[index]['label'],
                          ),
                        ))
              ],
            ),
          ),
          const SizedBox(height: 38),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Popular doctors',
              style: roboto.copyWith(
                  fontSize: 22,
                  color: black,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Wrap(
                runSpacing: 14,
                spacing: 16,
                children: [
                  ...List.generate(
                      doctors.length,
                      (index) => GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailPage(doctor: doctors[index])));
                            },
                            child: DoctorItem(
                              doctor: doctors[index],
                            ),
                          ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
