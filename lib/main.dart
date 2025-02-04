import 'package:flutter/material.dart';
import 'package:dyn_mouse_scroll/dyn_mouse_scroll.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dyn Mouse Scroll Demo',
      home: ScrollDemoPage(),
    );
  }
}

class ScrollDemoPage extends StatelessWidget {
  const ScrollDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Groups')),
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(8.0),
        child: DynMouseScroll(
          // Wrap ListView with DynMouseScroll
          builder: (context, controller, physics) => ListView.builder(
            controller: controller, // Custom scroll controller
            physics: physics, // Custom scroll physics
            itemCount: 100,
            itemBuilder: (context, index) => Card(
              elevation: 3,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: ListTile(
                tileColor: Colors.white,
                leading: CircleAvatar(
                  child: Icon(Icons.group, color: Colors.blue),
                ),
                title: Text('Group ${index + 1}',
                    style: TextStyle(color: Colors.black)),
                subtitle: Text('Last message from group ${index + 1}',
                    style: TextStyle(color: Colors.black)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
