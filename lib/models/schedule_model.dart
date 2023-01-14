import 'package:doctor_appoinment/models/doctor_model.dart';

class Schedule {
  final Doctor doctor;
  final String status;
  final DateTime time;

  Schedule({
    required this.doctor,
    required this.status,
    required this.time,
  });
}

List<Schedule> schedules = [
  Schedule(
      doctor: doctors[4],
      status: 'Confirmed',
      time: DateTime.parse('2023-01-14')),
  Schedule(
      doctor: doctors[0],
      status: 'Confirmed',
      time: DateTime.parse('2023-01-15')),
  Schedule(
      doctor: doctors[1],
      status: 'Confirmed',
      time: DateTime.parse('2023-01-18 10:30')),
  Schedule(
      doctor: doctors[2],
      status: 'Confirmed',
      time: DateTime.parse('2023-01-20 10:45')),
  Schedule(
      doctor: doctors[3],
      status: 'Confirmed',
      time: DateTime.parse('2023-01-22 13:45')),
];
