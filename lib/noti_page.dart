import 'package:flutter/material.dart';

class NotiPage extends StatefulWidget {
  const NotiPage({Key? key}) : super(key: key);

  @override
  _NotiPageState createState() => _NotiPageState();
}

class _NotiPageState extends State<NotiPage> {
  @override
  Widget build(BuildContext context) {
    return NotificationWidget();
  }
}

class NotificationWidget extends StatelessWidget {
  NotificationWidget({Key? key}) : super(key: key);
  final List<Notification> notifications= [
    Notification(avt: 'https://image-us.24h.com.vn/upload/4-2020/images/2020-12-31/3-1609403761-951-width650height813.jpg',
        time: '2 days ago'),
    Notification(avt: 'https://menback.com/wp-content/uploads/2020/05/trai-tay-dep.jpg',
        time: '3 days ago'),
    Notification(avt: 'https://image-us.24h.com.vn/upload/4-2020/images/2020-12-31/3-1609403761-951-width650height813.jpg',
        time: '5 days ago'),
    Notification(avt: 'https://menback.com/wp-content/uploads/2020/05/trai-tay-dep.jpg',
        time: '8 days ago'),
    Notification(avt: 'https://image-us.24h.com.vn/upload/4-2020/images/2020-12-31/3-1609403761-951-width650height813.jpg',
        time: '10 days ago'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: ListView.separated(
        itemCount: notifications.length,
        itemBuilder: (BuildContext contetx, int index) {
          return SafeArea(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(notifications[index].avt),
                    ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(
                            child: Text(
                              'New Task Alert: "Weekly Photos Of Supermarket Display & Catalogue" - \$13',
                              overflow: TextOverflow.clip,
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.access_alarm,
                                color: Colors.amber,
                              ),
                              Text(
                                notifications[index].time
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 20);
        },
      ),
    );
  }
}


class Notification {
  final String avt;
  final String time;
     Notification({required this.avt, required this.time});
}