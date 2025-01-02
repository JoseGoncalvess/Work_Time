import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:work_time/core/consts.dart';

class RealTimeClok extends StatefulWidget {
  const RealTimeClok({super.key});

  @override
  State<RealTimeClok> createState() => _RealTimeClokState();
}

class _RealTimeClokState extends State<RealTimeClok> {
  String _currentTime = '';
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        if (mounted) {
          _getcurrentTime();
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  void _getcurrentTime() {
    DateTime now = DateTime.now();
    String formattedTime = DateFormat('HH:mm:ss').format(now);
    setState(() {
      _currentTime = formattedTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 0.25,
      child: Column(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.fmd_good_sharp,
                color: optionalColor,
              ),
              Text(
                "Arcoverde - PE",
                style: TextStyle(
                    color: secundaryColor, fontWeight: FontWeight.w500),
              )
            ],
          ),
          Text(
            _currentTime,
            style: TextStyle(
                fontSize: MediaQuery.sizeOf(context).height * 0.08,
                color: primaryColor,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto"),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
