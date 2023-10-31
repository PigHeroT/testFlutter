import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intern_demo/CoreUI/PHButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter(int newValue) {
    setState(() {
      log('$newValue');
      _counter = newValue;
      log('son $_counter');
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            // ---------> lỗi liên tục
            // Image.asset("assets/images/icon/logo.png", width: 300, height: 100),
            const MyTextField(),
            const MyTextField(),
            SizedBox(
                width: MediaQuery.of(context).size.width / 1.4,
                child: const ElevatedButton(
                    onPressed: null, child: Text('Đăng nhập'))),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Quên mật khẩu'),
                  ),
                  const Text("  |"),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Trợ giúp'),
                  ),
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Đăng ký'),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 2),
            SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                child: const MyRichText()),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 30,
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MyRichText extends StatelessWidget {
  const MyRichText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Hoàn thành bước này nghĩa là bạn đồng ý với ',
        style: DefaultTextStyle.of(context).style,
        children: const <TextSpan>[
          TextSpan(
              text: 'điều kiện khoản sử dụng',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: ' của Dlink!'),
        ],
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width / 1.4,
        child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Tên đăng nhập"),
              TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Enter your username',
                ),
              ),
            ])));
  }
}
