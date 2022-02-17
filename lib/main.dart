import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lofimusic/Widgets/CarouselWithIndicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lofi Music',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color( 0xff9514d0 ),
        primaryColorLight: const Color( 0xffedd0fb ),
        primaryColorDark: const Color( 0xff640d8c ),
        canvasColor: const Color( 0xfffafafa ),
        scaffoldBackgroundColor: const Color( 0xfffafafa ),
        bottomAppBarColor: const Color( 0xffffffff ),
        cardColor: const Color( 0xffffffff ),
        dividerColor: const Color( 0x1f000000 ),
        highlightColor: const Color( 0x66bcbcbc ),
        splashColor: const Color( 0x66c8c8c8 ),
        selectedRowColor: const Color( 0xfff5f5f5 ),
        unselectedWidgetColor: const Color( 0x8a000000 ),
        disabledColor: const Color( 0x61000000 ),
        toggleableActiveColor: const Color( 0xff8512ba ),
        secondaryHeaderColor: const Color( 0xfff6e8fd ),
        backgroundColor: const Color( 0xffdca2f6 ),
        dialogBackgroundColor: const Color( 0xffffffff ),
        indicatorColor: const Color( 0xffa716e9 ),
        hintColor: const Color( 0x8a000000 ),
        errorColor: const Color( 0xffd32f2f ),
      ),
      home: const MyHomePage(title: 'Lofi Music'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(child: Text(widget.title)) ,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColorDark,
          elevation: 6.0,
          child: const Icon(Icons.menu),
          onPressed: () {
            print('I am Floating Action Button');
          }),
      body: const Center(
        child: CarouselWithIndicator(),
      ),
    );
  }
}
