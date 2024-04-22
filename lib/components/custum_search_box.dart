import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SearchBox extends StatelessWidget {
  SearchBox({ required this.onpressed,required this.titleSearch});
  VoidCallback onpressed;
  String titleSearch;
  @override
  Widget build(BuildContext context) {
    return
      TextField(
        onTap:onpressed,
        decoration: InputDecoration(
          labelText:titleSearch ,
          hintText:'Search...' ,
          prefixIcon: Icon(Ionicons.search_outline,color: Colors.black,),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.0),borderSide: BorderSide(color: Colors.white10,width:0)
          ),
        ),
        onChanged: (text) {
          // Handle text changes (e.g., filtering results) here
          print('Search query: $text');
        },
      );
  }
}