import 'package:flutter/material.dart';
import 'package:practices/data.dart';
import 'package:practices/nextpage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Data()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<Data>(context);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Provider'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                providerdata.value.toString(),
                style: const TextStyle(fontSize: 50),
              ),
              IconButton(
                  onPressed: () {
                    providerdata.increament();
                  },
                  icon: const Icon(Icons.add)),
              IconButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NextPage())),
                  icon: const Icon(Icons.remove)),
              GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NextPage())),
                  child: Text('press')),
            ],
          ),
        ),
      ),
    );
  }
}
