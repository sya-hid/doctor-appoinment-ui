import 'package:doctor_appoinment/const.dart';
import 'package:doctor_appoinment/models/schedule_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScheduleItem extends StatelessWidget {
  final Schedule schedule;
  const ScheduleItem({
    Key? key,
    required this.schedule,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              blurRadius: 10,
              offset: Offset.zero,
              color: grey.withOpacity(0.3)),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. ${schedule.doctor.name}',
                    style: roboto.copyWith(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        letterSpacing: 1),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    schedule.doctor.specialist,
                    style: roboto.copyWith(
                        color: grey, fontSize: 14, letterSpacing: 1),
                  ),
                ],
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(schedule.doctor.image)),
                    shape: BoxShape.circle,
                    color: Color(schedule.doctor.color).withOpacity(0.5)),
              )
            ],
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          Row(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.calendar_month,
                    color: grey,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    DateFormat('d/MM/y').format(schedule.time),
                    style: roboto.copyWith(color: black, letterSpacing: 1),
                  )
                ],
              ),
              const SizedBox(width: 15),
              Row(
                children: [
                  const Icon(
                    Icons.access_time_filled,
                    color: grey,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    DateFormat('jm').format(schedule.time),
                    style: roboto.copyWith(color: black, letterSpacing: 1),
                  )
                ],
              ),
              const SizedBox(width: 15),
              Row(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    schedule.status,
                    style: roboto.copyWith(color: black, letterSpacing: 1),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: (MediaQuery.of(context).size.width / 2) - 40,
                decoration: BoxDecoration(
                    color: grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    'Cancel',
                    style: roboto.copyWith(
                      color: black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: (MediaQuery.of(context).size.width / 2) - 40,
                decoration: BoxDecoration(
                    color: purple, borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    'Reschedule',
                    style: roboto.copyWith(
                      color: white,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
