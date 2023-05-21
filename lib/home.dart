import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

String stringResponse="";
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String keyword1="";
  onChangeText(text){
    setState(() {
      keyword1=text;
      
      
    });

  }
  Future fetchData(keyword) async{
var url='https://api.unsplash.com/photos/?client_id=MPmamU60Bx55wlBLTfy0IETU1AYV5ij1SoU6PmKuwRg';
// ignore: unused_local_variable
var responseApi=await http.get(url as Uri);
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      
      body: SafeArea(child: Column(
        children: <Widget>[
          Padding(
            
            padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
            child: TextField(
              onChanged: onChangeText,
              decoration: InputDecoration(
                hintText: "search",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
          ),
          Text("search image $keyword1'",style: const TextStyle(fontSize: 15),),
          
        ],
      )),
    );
  }
}