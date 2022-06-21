import 'package:flutter/material.dart';
import 'package:scroll_pageview/top_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final PageController _controller= PageController(
    initialPage:  1,
  );
  @override

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: const [
                  TopPage(myTitle: "ONE", myColor : Colors.green),
                  TopPage(myTitle: "TWO", myColor : Colors.yellow),
                  TopPage(myTitle: "THREE", myColor : Colors.blue),
                ],
              ),
            ),
            SizedBox(height: 8,),
            Expanded(
              flex: 5,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: const [
                  TopPage(myTitle: "ONE", myColor : Colors.green),
                  TopPage(myTitle: "TWO", myColor : Colors.yellow),
                  TopPage(myTitle: "THREE", myColor : Colors.blue),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
