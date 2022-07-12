import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/data_class.dart';
import 'package:provider_flutter/hold_data.dart';
import 'package:provider_flutter/recieve_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
   final providerData = Provider.of<Data>(context); 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:const Text('HomePage',style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Text(providerData.value.toString()),
          RaisedButton(onPressed: (){
            providerData.increment();
          }),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DataHold()));
          }),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>RecieveData()));
          }),
        ],
      ),
    );
  }
}
