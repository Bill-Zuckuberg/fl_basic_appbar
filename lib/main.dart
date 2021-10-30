import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          leading: const Icon(Icons.tag_faces),
          title: const Text('Sample title'),
          actions: <Widget>[
            const IconButton(
                onPressed: null, icon: Icon(Icons.directions_bike)),
            const IconButton(onPressed: null, icon: Icon(Icons.directions_bus)),
            PopupMenuButton(itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(child: Text('Boat')),
                const PopupMenuItem(child: Text('Train'))
              ];
            })
          ],
        ),
        body: const Center(
          child: Text('Hello'),
        ),
      ),
    );
  }
}
