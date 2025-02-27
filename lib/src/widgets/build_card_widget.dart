import 'package:flutter/material.dart';
import 'package:it4gaz/src/widgets/navigation_button_widget.dart';

class CardWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final String description;
  final Widget navigateTo;

  const CardWidget({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.description,
    required this.navigateTo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 40),
      child: Container(
        height: 250,
        width: 400,
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
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
              child: Row(
                children: [
                  Image.asset(
                    iconPath,
                    width: 30,
                    height: 30,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 1, color: Colors.grey),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
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
      ),
    );
  }
}