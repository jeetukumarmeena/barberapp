import 'package:barberapp/pages/booking.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2b1615),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hello",
                        style: TextStyle(
                          color: Color.fromARGB(197, 255, 255, 255),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Jeetu Meena",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "images/boy.jpg",
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              const Divider(color: Colors.white30, thickness: 1),
              const SizedBox(height: 20),

              const Text(
                "Services",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              // Service Rows
              _buildServiceRow(
                "Hair Washing",
                "images/hairwashing.avif",
                "Classic Shaving",
                "images/shavingg.png",
              ),

              const SizedBox(height: 20),

              _buildServiceRow(
                "Hair Cutting",
                "images/haircutting.webp",
                "Facial",
                "images/facial.jpg",
              ),

              const SizedBox(height: 20),

              _buildServiceRow(
                "Kids Haircut",
                "images/kidshaircutting.webp",
                "Beard Trimming",
                "images/biarredtrimming.jpg",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildServiceRow(
    String title1,
    String image1,
    String title2,
    String image2,
  ) {
    return Row(
      children: [
        Expanded(
          child: ServiceCard(
            title: title1,
            imagePath: image1,
            onTap: () => _navigateToBooking(context, title1),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: ServiceCard(
            title: title2,
            imagePath: image2,
            onTap: () => _navigateToBooking(context, title2),
          ),
        ),
      ],
    );
  }

  void _navigateToBooking(BuildContext context, String service) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Booking(service: service),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  const ServiceCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0xFF3a1f1d),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}