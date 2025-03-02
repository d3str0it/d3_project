import 'package:flutter/material.dart';
import 'package:it4gaz/gen/assets.gen.dart';
import 'package:it4gaz/src/widgets/navigation_button_widget.dart';
import 'package:it4gaz/src/screens/tables/tables_screen.dart';
// Модель для уведомления
class NotificationItem {
  final String title;
  final TimeOfDay timeReceived;

  NotificationItem({
    required this.title,
    required this.timeReceived,
  });
}

// Виджет карточки уведомления
class NotificationCard extends StatelessWidget {
  final NotificationItem notification;
  final VoidCallback onClose;

  const NotificationCard({
    super.key,
    required this.notification,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(10), 
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(48, 0, 0, 0), 
            blurRadius: 5, 
            spreadRadius: 2, 
            offset: const Offset(0, 2), 
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.warning, color: Colors.orange),
                    const SizedBox(width: 8),
                    const Text(
                      'Предупреждение!',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: onClose,
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
             
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Значение: ${notification.title}',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'достигла уровня: Критический',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(Assets.icons.clockIcon.path),
                    const SizedBox(width: 4),
                    Text(
                      '${DateTime.now().year}-${DateTime.now().month.toString().padLeft(2, '0')}-${DateTime.now().day.toString().padLeft(2, '0')}, ${notification.timeReceived.hour}:${notification.timeReceived.minute.toString().padLeft(2, '0')}',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: () {
                         
                  },
                  icon: const Icon(Icons.arrow_forward, size: 14),
                  label: const Text('Перейти'),
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 12),
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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

class NotificationList extends StatefulWidget {
  const NotificationList({super.key});

  @override
  _NotificationListState createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  List<NotificationItem> notifications = [];

  @override
  void initState() {
    super.initState();
    
    for (int i = 0; i < 10; i++) { 
      notifications.add(
        NotificationItem(
          title: "Уведомление ${i + 1}",
          timeReceived: TimeOfDay.now(),
        ),
      );
    }
  }

  void _clearNotifications() {
    setState(() {
      notifications.clear();
    });
  }

  void _removeNotification(int index) {
    setState(() {
      notifications.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
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
        children: [
          Container(
            width: 500,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 233, 226, 226),
              borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: const Text(
                    'Уведомления',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                TextButton(
                  onPressed: _clearNotifications,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.grey[800],
                  ),
                  child: const Text('Очистить'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: notifications.isEmpty
                  ? Center(
                      child: Text(
                        'Список уведомлений пуст',
                        style: TextStyle(color: Colors.grey[600], fontSize: 16),
                      ),
                    )
                  : ListView.builder(
                      itemCount: notifications.length,
                      itemBuilder: (context, index) {
                        return NotificationCard(
                          notification: notifications[index],
                          onClose: () => _removeNotification(index),
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
} 
  