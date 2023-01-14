import 'package:doctor_appoinment/const.dart';
import 'package:doctor_appoinment/models/schedule_model.dart';
import 'package:doctor_appoinment/widgets/schedule_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> tabs = ['Upcoming', 'Completed', 'Canceled'];
    List<Schedule> nearest = schedules
        .where((element) =>
            DateFormat('d/MM/y').format(element.time) ==
            DateFormat('d/MM/y').format(DateTime.now()))
        .toList();
    List<Schedule> futures = schedules
        .where((element) =>
            DateFormat('d/MM/y').format(element.time) !=
            DateFormat('d/MM/y').format(DateTime.now()))
        .toList();
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Schedule',
              style: roboto.copyWith(
                  fontSize: 28, color: black, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5)),
                        child: TabBar(
                            indicatorColor: purple,
                            unselectedLabelColor: black.withOpacity(.5),
                            labelStyle:
                                roboto.copyWith(fontSize: 14, letterSpacing: 1),
                            labelColor: white,
                            indicator: BoxDecoration(
                                color: purple,
                                borderRadius: BorderRadius.circular(10)),
                            tabs: [
                              ...List.generate(
                                  tabs.length,
                                  (index) => Tab(
                                        text: tabs[index],
                                      ))
                            ]),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: TabBarView(children: [
                        SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nearest visit',
                                style: roboto.copyWith(
                                    color: black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                              const SizedBox(height: 20),
                              ...List.generate(
                                  nearest.length,
                                  (index) => Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 16),
                                        child: ScheduleItem(
                                          schedule: nearest[index],
                                        ),
                                      )),
                              const SizedBox(height: 10),
                              Text(
                                'Future visit',
                                style: roboto.copyWith(
                                    color: black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                              const SizedBox(height: 20),
                              ...List.generate(
                                  futures.length,
                                  (index) => Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 16),
                                        child: ScheduleItem(
                                          schedule: futures[index],
                                        ),
                                      )),
                            ],
                          ),
                        ),
                        Center(
                          child: Text(
                            'Completed',
                            style: roboto.copyWith(fontSize: 24, color: purple),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Canceled',
                            style: roboto.copyWith(fontSize: 24, color: purple),
                          ),
                        ),
                      ]),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
