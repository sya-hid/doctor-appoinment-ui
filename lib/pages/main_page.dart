import 'package:doctor_appoinment/const.dart';
import 'package:doctor_appoinment/models/menu_model.dart';
import 'package:doctor_appoinment/pages/home_page.dart';
import 'package:doctor_appoinment/pages/schedule_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  Widget body() {
    switch (currentPage) {
      case 0:
        return const HomePage();
      case 1:
        return Text(
          'Messages',
          style: roboto.copyWith(fontSize: 28, color: purple),
        );
      case 2:
        return const SchedulePage();
      case 3:
        return Text(
          'Settings',
          style: roboto.copyWith(fontSize: 28, color: purple),
        );
      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: white, statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      backgroundColor: white,
      body: Center(child: body()),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(color: white, boxShadow: [
          BoxShadow(
            color: grey.withOpacity(0.5),
            offset: Offset.zero,
            blurRadius: 5,
          )
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...List.generate(
                menus.length,
                (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          currentPage = index;
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            menus[index]['icon'],
                            color: currentPage == index
                                ? purple
                                : grey.withOpacity(0.8),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            menus[index]['label'],
                            style: roboto.copyWith(
                                color: currentPage == index
                                    ? purple
                                    : grey.withOpacity(0.8),
                                fontSize: 14,
                                letterSpacing: 1),
                          ),
                        ],
                      ),
                    ))
          ],
        ),
      ),
    );
  }
}
