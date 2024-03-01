import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satetemanagement_provider/Provider/ExampleOneProvider.dart';


class ExampleOneScreen extends StatefulWidget {
  const ExampleOneScreen({super.key});

  @override
  State<ExampleOneScreen> createState() => _ExampleOneScreenState();
}

class _ExampleOneScreenState extends State<ExampleOneScreen> {

  double value=1.0;
  @override
  Widget build(BuildContext context) {
    // final provider= Provider.of<ExampleOneProvider>(context, listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Implementaiton"),
      ),
      body: Center(
        child: Column(
          children: [
            Consumer<ExampleOneProvider>(builder: (context, value, child){
              return Slider(
                  min: 0,
                  max: 1,
                  value: value.value, onChanged: (val){
                value.setvalue(val);
              },);
            }),


            Center(
              child: Consumer<ExampleOneProvider>(builder: (context, value, child){
                return Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                            color: Colors.green.withOpacity(value.value)
                        ),
                        child: Text('Container'),),),
              
                    Expanded(
                        child: Container(
                          height: 100.0,
                          decoration: BoxDecoration(
                              color: Colors.redAccent.withOpacity(value.value)
                          ),
                          child: Text('Container'),))
                  ],
                );
              }),
            )


          ],
        ),
      ),
    );
  }
}
