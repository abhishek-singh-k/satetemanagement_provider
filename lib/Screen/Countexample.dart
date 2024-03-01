import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satetemanagement_provider/Provider/count_Provider.dart';


class countexample extends StatefulWidget {
  const countexample({super.key});

  @override
  State<countexample> createState() => _countexampleState();
}

class _countexampleState extends State<countexample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countprovider = Provider.of<CountProvider>( context,listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      countprovider.setcount();
    });
  }


  Widget build(BuildContext context) {
    final countprovider = Provider.of<CountProvider>( context,listen: false);
    return  Scaffold(

      appBar: AppBar(
        title: Text('Provider Implementation'),),

      body: Center(
          child: Consumer<CountProvider>(builder: (context,value, child){
            return Text(value.count.toString(),
              style: TextStyle(fontSize: 50.0),);
          },)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {
          countprovider.setcount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
