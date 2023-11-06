import 'package:flutter/material.dart';
import 'package:whatsapp2/main.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LabelApp(),
  ));
}

class LabelApp extends StatelessWidget {
  LabelApp({Key? key});

  // Define a list of label data with text, icon, and background color
  final List<Map<String, dynamic>> labelData = [
    {
      'text': 'New customer',
      'icon': Icons.label_sharp,
      'backgroundColor': Colors.blue,
      'subtext': '0 items',
    },
    {
      'text': 'New order',
      'icon': Icons.label_sharp,
      'backgroundColor': Colors.green,
      'subtext': '0 items',
    },
    {
      'text': 'Pending payment',
      'icon': Icons.label_sharp,
      'backgroundColor': Colors.orange,
      'subtext': '0 items',
    },
    {
      'text': 'Paid',
      'icon': Icons.label_sharp,
      'backgroundColor': Colors.purple,
      'subtext': '0 items',
    },
    {
      'text': 'Order complete',
      'icon': Icons.label_sharp,
      'backgroundColor': Colors.red,
      'subtext': '0 items',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff128C7E),
        title: Text("Labels"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MyHomePage(),
              ),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            for (var label in labelData)
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: label['backgroundColor'],
                      child: Icon(
                        label['icon'],
                        color: Colors.white,
                      ),
                    ),
                    title: Text(label['text']),
                    subtitle: Text(label['subtext']),
                  ),
                ],
              ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Use labels to organize your customers and chats. Tap and hold any message or contact to label it. Learn more",
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
