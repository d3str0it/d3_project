import 'package:flutter/material.dart';

class InputDateIntervalWidget extends StatefulWidget {
  const InputDateIntervalWidget({super.key});

  @override
  _InputDateIntervalWidgetState createState() =>
      _InputDateIntervalWidgetState();
}

class _InputDateIntervalWidgetState extends State<InputDateIntervalWidget> {
  DateTime selectedDate1 = DateTime.now();
  DateTime selectedDate2 = DateTime.now();

  final fieldText1 = TextEditingController();
  final fieldText2 = TextEditingController();

  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: isStartDate ? selectedDate1 : selectedDate2,
      firstDate: DateTime(2015),
      lastDate: DateTime(2050),
    );
    if (pickedDate != null) {
      setState(() {
        if (isStartDate) {
          selectedDate1 = pickedDate;
          fieldText1.text = "${pickedDate.day}.${pickedDate.month}.${pickedDate.year}";
        } else {
          selectedDate2 = pickedDate;
          fieldText2.text = "${pickedDate.day}.${pickedDate.month}.${pickedDate.year}";
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "C",
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(width: 10),
        SizedBox(
          width: 160,
          height: 42,
          child: TextField(
            controller: fieldText1,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 0.2),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0.2, color: Colors.grey),
              ),
              fillColor: Colors.white,
              hintText: '12.12.2025',
              filled: true,
              prefixIcon: IconButton(
                iconSize: 16,
                icon: Icon(Icons.calendar_month),
                onPressed: () {
                  _selectDate(context, true); 
                },
              ),
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
        SizedBox(width: 10),
        Text(
          "По",
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(width: 10),
        SizedBox(
          width: 160,
          height: 42,
          child: TextField(
            controller: fieldText2,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 0.2),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0.2, color: Colors.grey),
              ),
              fillColor: Colors.white,
              hintText: '12.12.2025',
              filled: true,
              prefixIcon: IconButton(
                iconSize: 16,
                icon: Icon(Icons.calendar_month),
                onPressed: () {
                  _selectDate(context, false); 
                },
              ),
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
