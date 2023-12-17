import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Camel Case (낙타형)
// snake _case (뱀형)
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '홈',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '숫자',
              style: TextStyle(
                color: Colors.black12,
                fontSize: 70,
              ),
            ),
            Text(
              '$count',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 70,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Button Tapped');
              },
              child: Text('ElevatedButton'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('TextButton'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('TextButton'),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: '글자',
                border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                print(text);
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 화면 갱신
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
