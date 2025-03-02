import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:it4gaz/src/widgets/navigation_button_widget.dart';

class CardWidget extends StatelessWidget {
  final Widget icon;
  final String title;
  final String description;
  final Widget navigateTo;

  const CardWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
    required this.navigateTo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 470,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(48, 0, 0, 0),
            blurRadius: 8,
            spreadRadius: 1,
            offset: const Offset(1, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              icon,
              const SizedBox(width: 8),
              AutoSizeText(
                title,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                minFontSize: 14,
                maxFontSize: 26,
              ),
            ],
          ),
          const Divider(thickness: 1, color: Colors.grey),
          AutoSizeText(
            description,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
            maxLines: 3,
            minFontSize: 12,
            maxFontSize: 18,
          ),
          Expanded( 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end, 
              children: [
                Align(
                  alignment: Alignment.bottomRight, 
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, bottom: 10), 
                    child: NavigationButtonWidget(
                      navigateTo: navigateTo,
                      label: 'Перейти',
                      icon: Icons.arrow_forward,
                      isSelected: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}