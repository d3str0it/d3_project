import 'package:flutter/material.dart';
import 'package:masked_text/masked_text.dart';

class input_date_interval_widget extends StatelessWidget {
  const input_date_interval_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final fieldText1 = TextEditingController();
    final fieldText2 = TextEditingController();
    return Row(
      children: [
        Text(
          "C",
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 200,
          height: 42,
          child: MaskedTextField(
            mask: '##.##.####-##:##',
            controller: fieldText1,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 0.2,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0.2, color: Colors.grey),
              ),
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
                  fieldText1.clear();
                },
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "По",
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 200,
          height: 42,
          child: MaskedTextField(
            mask: '##.##.####-##:##',
            controller: fieldText2,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 0.2,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0.2, color: Colors.grey),
              ),
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
                  fieldText2.clear();
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}