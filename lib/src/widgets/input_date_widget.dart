import 'package:flutter/material.dart';

class input_date_widget extends StatelessWidget {
  const input_date_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 42,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(fontSize: 12),
        decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide(width: 0.2,), ),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 0.2, color: Colors.grey), ),
          fillColor: Colors.white,
          hintText: '12.12.2025-12:00',
          filled: true,
          prefixIcon: IconButton(
              iconSize: 16,
              icon: Icon(Icons.calendar_month),
              onPressed: () {
                
              }),
          suffixIcon: IconButton(
            iconSize: 16,
            icon: Icon(Icons.clear),
            onPressed: () {
              
            },
          ),
        ),
      ),
    );
  }
}