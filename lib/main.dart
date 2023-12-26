import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MyAppBar(),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "File",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.tune, size: 30, color: Colors.black),
                )
              ],
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Manager",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Let's clean and manage your file's",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 230,
            child: Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return const MyCards();
                  }),
            ),
          )
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_left, size: 40),
            ),
            Container(
              margin: const EdgeInsets.only(right: 30),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyCards extends StatelessWidget {
  const MyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 180,
      decoration: BoxDecoration(
          color: const Color(0xff22293d),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Manager",
                style: TextStyle(color: Color(0xff434e6c), fontSize: 15),
              ),
              Icon(Icons.more_horiz, color: Colors.white)
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Large",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "92",
                style: TextStyle(
                    color: Color(0xffcfff00),
                    fontSize: 23,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "files",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "items",
                style: TextStyle(
                    color: Color(0xff434e6c),
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          Container(
            height: 15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const LinearProgressIndicator(
                value: 0.7,
                backgroundColor: Color(0xff434e6c),
                valueColor: AlwaysStoppedAnimation(Color(0xffcfff00)),
              ),
            ),
          ),
          const SizedBox(height: 3),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "72.40GB/128GB",
              style: TextStyle(
                color: Colors.white,
                fontSize: 9,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 30,
            child: SliderButton(
              action: () {},
              label: const Text(
                '>>>',
                style: TextStyle(fontSize: 18),
              ),
              backgroundColor: Color(0xff434e6c),
              child: Container(
                margin: EdgeInsets.symmetric(vertical:4,horizontal: 2),
                height: double.infinity,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18)
                ),
                child: const Center(
                  child: Text(
                    "Clean",
                    style: TextStyle(color: Color(0xff434e6c)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
