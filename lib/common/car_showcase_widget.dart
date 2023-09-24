import 'package:flutter/material.dart';

class CarShowcaseWidget extends StatelessWidget {
  const CarShowcaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(12.0), // Adjust the radius as needed
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12.0), // Rounded top left corner
              bottomLeft: Radius.circular(12.0), // Rounded bottom left corner
            ),
            child: Image.asset('img/seat_ibiza.jpg'),
          ),
          const SizedBox(width: 7),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 7),
              Text(
                'SEAT Ibiza',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 3),
              Text(
                '2008',
                style: TextStyle(fontSize: 13),
              ),
              Spacer(),
              Text(
                'Servisare',
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(height: 5),
            ],
          )
        ],
      ),
    );
  }
}
