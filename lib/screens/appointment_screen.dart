import 'package:flutter/material.dart';
import 'package:medide/components/appbar.dart';
import 'package:medide/constants.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Appointment History",
                    style: kFormLabelTextStyle,
                  ),
                ),
                AppointmentCard(),
                AppointmentCard(),
                AppointmentCard(),
                AppointmentCard(),
                AppointmentCard(),
              ],
            ),
          ),
        ));
  }
}

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 80),
      decoration: BoxDecoration(
        color: Color(0xFFC7E9FF),
        borderRadius: BorderRadius.circular(21),
        boxShadow: [
          BoxShadow(
            color: Color(0x4EF193C7),
            offset: Offset(0, 20),
            blurRadius: 0,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: Column(children: [
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 44,
                backgroundImage: NetworkImage(
                    "https://media.idownloadblog.com/wp-content/uploads/2017/03/Twitter-new-2017-avatar-001.png"),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "${'Dr Aman Bumrow'}\n${'cardiovascular'}",
                style: kFormLabelTextStyle,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x2FF193C7),
                    offset: Offset(0, 40),
                    blurRadius: 0,
                    spreadRadius: 2,
                  ),
                ],
                gradient: LinearGradient(
                    stops: [0.0, 5.6],
                    colors: [Color(0xFFFFB1E1), Color(0xF0F4EAD5)])),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.schedule_outlined),
                    Text("${'Wed, May 22, 09:00am - 12:00am'}"),
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
