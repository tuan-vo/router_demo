import 'package:flutter/material.dart';
import 'package:router_demo/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('This is the first page'),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => const SecondPage(
                  //           data: "He he",
                  //         )));
                  Navigator.pushNamed(context, "/second", arguments: "Hello");
                },
                child: Text('Go to second'))
          ],
        ),
      ),
    );
  }
}
