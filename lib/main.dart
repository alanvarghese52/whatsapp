import 'package:flutter/material.dart';
import 'package:whatsapp2/labels.dart';
import 'package:whatsapp2/linked.dart';
import 'package:whatsapp2/settings.dart';
import 'package:whatsapp2/starred.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    ),
  );
}
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<Business> bus = [
    Business(
        busIcon: const Icon(Icons.add_business_sharp),
        toolsname: "Business Profile",
        subtext: "Manage address, hours and websites"),
    Business(
        busIcon: const Icon(Icons.apps),
        toolsname: "Catlog",
        subtext: "Show products and services"),
    Business(
        busIcon: const Icon(Icons.speaker_phone),
        toolsname: "Advertise",
        subtext: "Create ads that lead to Whatsapp"),
    Business(
        busIcon: const Icon(Icons.link),
        toolsname: "Facebook & Instagram",
        subtext: "Add Whatsapp to your accounts"),
    Business(
        busIcon: const Icon(Icons.message),
        toolsname: "Greeting message",
        subtext: "Welcome new customers automatically"),
    Business(
        busIcon: const Icon(Icons.umbrella),
        toolsname: "Away message",
        subtext: "Reply automatically when you're away"),
    Business(
        busIcon: const Icon(Icons.electric_bolt_rounded),
        toolsname: "Quick replies ",
        subtext: "Reply automatically when you're away"),
    Business(
        busIcon: const Icon(Icons.label_sharp),
        toolsname: "Labels ",
        subtext: "Organize chats and customers"),
  ];

  final List<ChatItem> chats = [
    ChatItem(
      username: "Alan",
      lastMessage: "Hello, how are you?",
      profileImage: "images/2.jpeg",
      timestamp: "4:30 PM",
    ),
    ChatItem(
      username: "Aleena",
      lastMessage: "Hi there!",
      profileImage: "images/1.jpeg",
      timestamp: "12:30 PM",
    ),
    ChatItem(
      username: "Binu",
      lastMessage: "Hello, Bro how are you?",
      profileImage: "images/3.jpeg",
      timestamp: "9:50 AM",
    ),
    ChatItem(
      username: "Albin",
      lastMessage: "Have you paid the fees!",
      profileImage: "images/4.jpeg",
      timestamp: "10:30 AM",
    ),
  ];

  final List<StatusItem> statuses = [
    StatusItem(
      username: "John",
      timeAgo: "2 minutes ago",
      statusImage: "images/q1.jpeg",
    ),
    StatusItem(
      username: "Mary",
      timeAgo: "1 hour ago",
      statusImage: "images/q2.jpg",
    ),
    StatusItem(
      username: "David",
      timeAgo: "3 hours ago",
      statusImage: "images/q3.jpeg",
    ),
    StatusItem(
      username: "Hari",
      timeAgo: "7 hours ago",
      statusImage: "images/q4.jpeg",
    ),
  ];

  final List<CallItem> calls = [
    CallItem(
      callerImage: "images/2.jpeg",
      username: "Charlie",
      callType: "Missed",
      callTime: "3 hours ago",
      callIcon: const Icon(Icons.call),
    ),
    CallItem(
      callerImage: "images/1.jpeg",
      username: "aleena",
      callType: "Incoming",
      callTime: "2 minutes ago",
      callIcon: const Icon(Icons.call),
    ),
    CallItem(
      callerImage: "images/3.jpeg",
      username: "Bob",
      callType: "Outgoing",
      callTime: "1 hour ago",
      callIcon: const Icon(Icons.video_call),
    ),
    CallItem(
      callerImage: "images/2.jpeg",
      username: "Charlie",
      callType: "Missed",
      callTime: "3 hours ago",
      callIcon: const Icon(Icons.call),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff128C7E),
          title: const Text("Whatsapp"),
          actions: [
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(width: 30),
            const Icon(Icons.search),
            const SizedBox(width: 20),
            PopupMenuButton<String>(
              onSelected: (value) {},
              itemBuilder: (BuildContext context) {
                return [

                  PopupMenuItem<String>(
                    value: 'new_group',
                    child: Text('New Group'),
                  ),

                  PopupMenuItem<String>(
                    value: 'new_broadcast',
                    child: Text('New Broadcast'),
                  ),

                  PopupMenuItem<String>(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LabelApp()),
                        );
                      },
                      child: Text('Labels'),
                    ),
                  ),

                  PopupMenuItem<String>(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LinkedApp()),
                        );
                      },
                      child: Text('Linked Devices'),
                    ),
                  ),

                  PopupMenuItem<String>(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StarredApp()),
                        );
                      },
                      child: Text('Starred Messages'),
                    ),
                  ),

                  PopupMenuItem<String>(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SettingaApp()),
                        );
                      },
                      child: Text('Settings'),
                    ),
                  ),

                ];
              },
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Align(
                child: Tab(
                  icon: Icon(Icons.add_business_rounded),
                ),
                alignment: Alignment(-1, 0),
              ),
              Align(
                child: Tab(
                  text: "Chats",
                ),
                alignment: Alignment(-2, 0),
              ),
              Align(
                child: Tab(
                  text: "Updates",
                ),
                alignment: Alignment(-2, 0),
              ),
              Align(
                child: Tab(
                  text: "Calls",
                ),
                alignment: Alignment(-1, 0),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: bus.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: bus[index].busIcon,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(bus[index].toolsname),
                    ],
                  ),
                  subtitle: Text(bus[index].subtext),
                  onTap: () {},
                );
              },
            ),
            ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(chats[index].profileImage),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(chats[index].username),
                      Text(chats[index].timestamp,
                          style: const TextStyle(fontSize: 12)),
                    ],
                  ),
                  subtitle: Text(chats[index].lastMessage),
                  onTap: () {},
                );
              },
            ),
            ListView.builder(
              itemCount: statuses.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(statuses[index].statusImage),
                  ),
                  title: Text(statuses[index].username),
                  subtitle: Text("Added ${statuses[index].timeAgo}"),
                  onTap: () {},
                );
              },
            ),
            ListView.builder(
              itemCount: calls.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(calls[index].callerImage),
                  ),
                  title: Text(calls[index].username),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "${calls[index].callType} • ${calls[index].callTime}"),
                      calls[index].callIcon,
                    ],
                  ),
                  onTap: () {},
                );
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xff25D366),
          child: const Icon(Icons.message),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}

class Business {
  final Icon busIcon;
  final String toolsname;
  final String subtext;

  Business({
    required this.busIcon,
    required this.toolsname,
    required this.subtext,
  });
}

class ChatItem {
  final String username;
  final String lastMessage;
  final String profileImage;
  final String timestamp;

  ChatItem({
    required this.username,
    required this.lastMessage,
    required this.profileImage,
    required this.timestamp,
  });
}

class StatusItem {
  final String username;
  final String timeAgo;
  final String statusImage;

  StatusItem({
    required this.username,
    required this.timeAgo,
    required this.statusImage,
  });
}

class CallItem {
  final String callerImage;
  final String username;
  final String callType;
  final String callTime;
  final Icon callIcon;

  CallItem({
    required this.callerImage,
    required this.username,
    required this.callType,
    required this.callTime,
    required this.callIcon,
  });
}
