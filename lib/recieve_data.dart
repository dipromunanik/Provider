import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/data_class.dart';

class RecieveData extends StatefulWidget {
  const RecieveData({Key? key}) : super(key: key);

  @override
  _RecieveDataState createState() => _RecieveDataState();
}

class _RecieveDataState extends State<RecieveData> {
  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<Data>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('RecieveData'),
      ),
      body: Column(
        children: [
          Text(providerData.value.toString())
        ],
      ),
    );
  }
}
