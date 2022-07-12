import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/data_class.dart';

class DataHold extends StatefulWidget {
  const DataHold({Key? key}) : super(key: key);

  @override
  _DataHoldState createState() => _DataHoldState();
}

class _DataHoldState extends State<DataHold> {
  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<Data>(context);
    return Scaffold(
        appBar: AppBar(
          title:const Text('HoldData'),
        ),
        body: Column(
            children: [
            Text(providerData.value.toString())
  ]
    )
    );
  }
}
