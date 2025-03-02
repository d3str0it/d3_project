import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:it4gaz/src/services/navigation_service.dart';
import 'package:it4gaz/src/widgets/navigation_button_widget.dart';
import 'package:pressable/pressable.dart';

class CardWidget extends StatelessWidget {
  final Widget icon;
  final String title;
  final String description;
  final Widget navigateTo;

  const CardWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.navigateTo,
  });

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Flexible(flex: 1, child: icon),
                  const SizedBox(width: 8),
                  Flexible(
                    flex: 8,
                    child: AutoSizeText(
                      title,
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      minFontSize: 14,
                      maxFontSize: 26,
                      overflow: TextOverflow.ellipsis,
                    ),
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
            ],
          ),
          Pressable.scale(
            onPressed: () =>
                context.read<NavigationService>().navigateTo(navigateTo),
            child: Row(
              children: [
                Text(
                  'Перейти',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 8),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
