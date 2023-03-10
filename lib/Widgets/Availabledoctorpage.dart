import 'package:flutter/material.dart';

class AvailableDoctorPage extends StatelessWidget {
  final String image;
  final String name;
  final String specialist;
  final double patients;
  final int experience;

  AvailableDoctorPage({
    required this.name,
    required this.image,
    required this.patients,
    required this.specialist,
    required this.experience,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      // color: Colors.blue,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                specialist,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Experience',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              Text(
                '$experience Years',
                style: TextStyle(
                  fontSize: 15,
                  // color: Colors.grey[600]
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Patients',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              Text(
                '$patients K',
                style: TextStyle(
                  fontSize: 15,
                  // color: Colors.grey[600]
                ),
              ),
            ],
          ),
          Container(
            height: double.infinity,
            width: 113,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
