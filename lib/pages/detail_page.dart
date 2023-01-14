import 'package:doctor_appoinment/const.dart';
import 'package:doctor_appoinment/models/doctor_model.dart';
import 'package:doctor_appoinment/widgets/review_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailPage extends StatelessWidget {
  final Doctor doctor;
  const DetailPage({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: purple, statusBarIconBrightness: Brightness.light));
    return Scaffold(
      backgroundColor: purple,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: transparent,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios, color: white)),
        actions: const [
          Icon(
            Icons.more_vert,
            color: white,
          )
        ],
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(doctor.color).withOpacity(.5),
                    image: DecorationImage(image: NetworkImage(doctor.image))),
              ),
              const SizedBox(height: 20),
              Text(
                'Dr. ${doctor.name}',
                style: roboto.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: white,
                    letterSpacing: 1),
              ),
              const SizedBox(height: 15),
              Text(
                doctor.specialist,
                style: roboto.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: white,
                    letterSpacing: 1),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: white.withOpacity(0.3)),
                    child: const Icon(
                      CupertinoIcons.phone_fill,
                      color: white,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: white.withOpacity(0.3)),
                    child: const Icon(
                      CupertinoIcons.chat_bubble_text_fill,
                      color: white,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(15))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About doctor',
                          style: roboto.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: black,
                              letterSpacing: 1),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          doctor.about,
                          maxLines: 2,
                          textAlign: TextAlign.justify,
                          style: roboto.copyWith(
                              height: 1.5,
                              fontSize: 14,
                              color: black,
                              letterSpacing: 1),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Reviews',
                              style: roboto.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: black,
                                  letterSpacing: 1),
                            ),
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.star,
                              color: yellow,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              rate(doctor).toStringAsFixed(1),
                              style: roboto.copyWith(
                                  color: black, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '(${doctor.reviews.length})',
                              style: roboto.copyWith(
                                  color: grey, letterSpacing: 1),
                            )
                          ],
                        ),
                        Text(
                          'See all',
                          style: roboto.copyWith(color: purple, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                            doctor.reviews.length,
                            (index) => Padding(
                                  padding: index == 0
                                      ? const EdgeInsets.only(
                                          left: 16, right: 16)
                                      : const EdgeInsets.only(right: 16),
                                  child:
                                      ReviewItem(review: doctor.reviews[index]),
                                ))
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: roboto.copyWith(
                              fontSize: 16,
                              color: black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: purple.withOpacity(0.3)),
                              child: const Icon(
                                Icons.location_on,
                                color: purple,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lotus Medical Center',
                                  style: roboto.copyWith(
                                      fontSize: 16,
                                      letterSpacing: 1,
                                      color: black,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  doctor.location,
                                  style: roboto.copyWith(
                                      fontSize: 14,
                                      letterSpacing: 1,
                                      color: grey,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: Offset.zero, color: grey.withOpacity(0.5), blurRadius: 5),
        ], color: white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Consultation',
                  style: roboto.copyWith(
                      fontSize: 14,
                      letterSpacing: 1,
                      color: grey,
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  '\$${doctor.price}',
                  style: roboto.copyWith(
                      fontSize: 20, color: black, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: purple, borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Text(
                  'Book Appoinment',
                  style: roboto.copyWith(fontSize: 16, color: white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
