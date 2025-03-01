import 'package:flutter/material.dart';

// Класс для карточки
class LevelDeformationCard extends StatelessWidget {
  final String title;
  final Color circleColor;
  final String value;
  final IconData arrowIcon;
  final Color arrowColor;
  final String percentage;
  final String description;

  // Конструктор
  const LevelDeformationCard({
    Key? key,
    required this.title,
    required this.circleColor,
    required this.value,
    required this.arrowIcon,
    required this.arrowColor,
    required this.percentage,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Row(
            children: [
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: circleColor,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 10),
         
          Text(
            value,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          
          Row(
            children: [
              Icon(arrowIcon, color: arrowColor, size: 16),
              const SizedBox(width: 4),
              Text(
                percentage,
                style: TextStyle(fontSize: 14, color: arrowColor),
              ),
              const SizedBox(width: 4),
              Text(
                description,
                style: const TextStyle(fontSize: 14, color: Colors.black), 
              ),
            ],
          ),
        ],
      ),
    );
  }
}