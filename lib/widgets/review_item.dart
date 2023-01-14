import 'package:doctor_appoinment/const.dart';
import 'package:doctor_appoinment/models/review_model.dart';
import 'package:flutter/material.dart';

class ReviewItem extends StatelessWidget {
  final Review review;
  const ReviewItem({
    Key? key,
    required this.review,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: grey.withOpacity(0.5),
                blurRadius: 10,
                offset: const Offset(5, 5)),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(review.image)),
                    shape: BoxShape.circle,
                    color: Color(review.color).withOpacity(0.5)),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      review.fullname,
                      style: roboto.copyWith(
                          color: black,
                          fontSize: 16,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '1 day ago',
                      style: roboto.copyWith(
                          color: grey,
                          fontSize: 14,
                          letterSpacing: 1,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(5, 5, 8, 5),
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
                      review.rate.toStringAsFixed(1),
                      style: roboto.copyWith(fontSize: 12, color: black),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Text(
            review.comment,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.justify,
            style: roboto.copyWith(
                color: black, fontSize: 14, letterSpacing: 1, height: 1.5),
          )
        ],
      ),
    );
  }
}
