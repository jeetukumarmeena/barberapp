import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  final String service;
  
  const Booking({super.key, required this.service});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2b1615),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),  // Added horizontal padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Back Button with better positioning
            Container(
              margin: const EdgeInsets.only(top: 40),  // Reduced top margin
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ),
            
            const SizedBox(height: 30.0),
            const Text(
              "Let's the\njourney begin",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 28.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,  // Better way to use full width
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),  // Added rounded corners
                child: Image.asset(
                  "images/discount_image.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            const SizedBox(height: 20.0),
            Text(
              "Selected Service: ${widget.service}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}