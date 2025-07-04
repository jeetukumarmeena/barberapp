import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2b1615),
      body: Container(
        margin: EdgeInsets.only(left: 20.0),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 20, top: 60),
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ),
            SizedBox(height: 30.0,),
            const Text(
              "Let's the\n journey begin",
              style: TextStyle(color: Colors.white70,fontSize: 28.0,fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}