import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it4gaz/src/services/navigation_service.dart';
import 'package:pressable/pressable.dart';

class NavigationButtonWidget extends StatefulWidget {
  final Widget navigateTo;
  final String label;
  final IconData icon;
  final bool isSelected;
  const NavigationButtonWidget(
      {super.key,
      required this.navigateTo,
      required this.label,
      required this.icon,
      required this.isSelected});

  @override
  State<NavigationButtonWidget> createState() => _NavigationButtonWidgetState();
}

class _NavigationButtonWidgetState extends State<NavigationButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: Pressable.scale(
        onPressed: () {
          context.read<NavigationService>().navigateTo(widget.navigateTo);
        },
        child: Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
            color: widget.isSelected
                ? const Color.fromRGBO(222, 204, 254, 1)
                : const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Icon(widget.icon, color: widget.isSelected ? Color.fromRGBO(110, 57, 203, 1) : Colors.black,),
              const SizedBox(width: 5),
              Text(
                widget.label,
                style: TextStyle(
                  color: widget.isSelected ? Color.fromRGBO(110, 57, 203, 1) : Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
