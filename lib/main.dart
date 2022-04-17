import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.whatshot, size:20),
        title: const Text("App Bar"),
        actions: const [Icon(Icons.more_vert_rounded ),], 
      ),
      body: Center(
        child: Text(
          '$_count',
          style: const TextStyle(fontSize: 50),
          ),
      ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              _increment();
            },
            child: const Icon(Icons.add),
          ),
      );
  }
  void _increment(){
    setState(() {
      _count++;
    });
  }
  }