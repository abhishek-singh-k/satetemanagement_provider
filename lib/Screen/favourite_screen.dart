import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satetemanagement_provider/Provider/favourite_one_provider.dart';


class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite Screen'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: 100,
                  itemBuilder: (context,index) {
                    return Consumer<FavouriteProvider>(builder: (context,value,child){
                      return ListTile(
                          title: Text('Item'+index.toString()),
                          trailing: value.selecteditem.contains(index)?Icon(Icons.favorite):Icon(Icons.favorite_border_outlined),
                          onTap:(){
                            if(value.selecteditem.contains(index)){
                              value.remove(index);
                            }
                            else{
                              value.additem(index);
                            }
                          }
                      );
                    });
                  })
          )
        ],
      ),
    );
  }
}
