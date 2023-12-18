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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 300,
              ),
              Container(
                height: 30,
              ),
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
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: '글자',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (text) {
                        print(text);
                      },
                    ),
                  ),
                  Expanded(child: ElevatedButton(onPressed: () {}, child: Text('login'))),
                ],
              ),
              // Image.network(
              //   'https://previews.123rf.com/images/forplayday/forplayday1302/forplayday130200003/18145847-%EC%8A%A4%ED%83%80%EC%9D%98-%ED%8F%AD%EB%B0%9C%EA%B3%BC-%ED%95%A8%EA%BB%98-%EB%A9%8B%EC%A7%84-%EC%9A%B0%EC%A3%BC-%EB%B0%B0%EA%B2%BD.jpg',
              // width: 300,
              // height: 300,
              // fit: BoxFit.cover,),
              Container(
                color: Colors.red,
                width: 120,
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/img.jpeg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
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
