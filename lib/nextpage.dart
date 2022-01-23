import 'package:flutter/material.dart';
import 'package:practices/data.dart';
import 'package:provider/provider.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<Data>(context);
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text(providerdata.value.toString()),
          ],
        ),
      ),
    );
  }
}
