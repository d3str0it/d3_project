import 'package:flutter/material.dart';

class SensorSummaryCard extends StatefulWidget {
  const SensorSummaryCard({super.key});

  @override
  State<SensorSummaryCard> createState() => _SensorSummaryCardState();
}

class _SensorSummaryCardState extends State<SensorSummaryCard> {
  Set<String> selectedSensors = {'все'};
  final List<String> allSensors = [
    'T1_K_1 д. кольц. деф.',
    'T1_K_2 д. кольц. деф.',
    'T1_K_3 д. кольц. деф.',
    'T1_R_1 д. прав. обр.',
    'T1_R_2 д. прав. обр.',
    'T1_R_3 д. прав. обр.',
    'T1_L_1 д. прав. обр.',
    'T1_L_2 д. прав. обр.',
    'T1_L_3 д. прав. обр.',
    'T1_Up_1 д. прав. обр.',
    'T1_Up_2 д. прав. обр.',
    'T1_Up_3 д. прав. обр.',
    'T1',
  ];

  String _getDisplayText() {
    if (selectedSensors.contains('все')) {
      return 'все';
    }

    return selectedSensors.join(', ');
  }

  void _showSensorSelector(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setDialogState) {
          return AlertDialog(
            title: const Text('Выберите датчики'),
            content: SizedBox(
              width: 300, // Фиксированная ширина окна (можно настроить)
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildCheckboxItem('все', setDialogState),
                    ...allSensors.map((sensor) => _buildCheckboxItem(sensor, setDialogState)).toList(),
                  ],
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  setState(() {
                    selectedSensors = {'все'};
                  });
                  Navigator.pop(context);
                },
                child: const Text('Сбросить'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Применить'),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildCheckboxItem(String sensor, StateSetter setDialogState) {
    final isSelected = selectedSensors.contains(sensor);
    return GestureDetector(
      onTap: () {
        _toggleSensorSelection(sensor);
        setDialogState(() {});
      },
      behavior: HitTestBehavior.translucent,
      child: Row(
        children: [
          Checkbox(
            value: isSelected,
            onChanged: (value) {
              _toggleSensorSelection(sensor);
              setDialogState(() {});
            },
          ),
          Expanded(
            child: Text(sensor), // Используем полное название датчика
          ),
        ],
      ),
    );
  }

  void _toggleSensorSelection(String sensor) {
    setState(() {
      if (sensor == 'все') {
        selectedSensors = {'все'};
        Navigator.pop(context);
      } else {
        selectedSensors.remove('все');
        if (selectedSensors.contains(sensor)) {
          selectedSensors.remove(sensor);
        } else {
          selectedSensors.add(sensor);
        }
        if (selectedSensors.isEmpty) {
          selectedSensors.add('все');
        }
      }
    });
  }

  Widget _buildSensorSelector() {
    return GestureDetector(
      onTap: () => _showSensorSelector(context),
      behavior: HitTestBehavior.translucent,
      child: Container(
        width: 80, // фиксированная ширина кнопки
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Text(
                _getDisplayText(),
                style: const TextStyle(fontSize: 14),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedCount = selectedSensors.contains('все') ? allSensors.length : selectedSensors.length;

    return Container(
      height: 160,
      width: 270,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 15, left: 10, right: 10),
        child: Column(
          children: [
            const Text(
              'Количество задействованных датчиков:',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              selectedSensors.contains('все')
                  ? allSensors.length.toString()
                  : selectedSensors.length.toString(),
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                const Text(
                  'Выбранные датчики:',
                  style: TextStyle(fontSize: 14),
                ),
                const Spacer(),
                _buildSensorSelector(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
