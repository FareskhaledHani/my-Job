import 'package:finalproject/Screens/home_screen/search_screan.dart';
import 'package:finalproject/Screens/search_screen/on-site/on-set_remote_screen.dart';
import 'package:finalproject/Screens/search_screen/search_screen_filter.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



class SearchScrean extends StatelessWidget {
  TextEditingController _searchController = TextEditingController();

  List<String> popularSearches = ["Flutter", "Dart", "Widgets", "Mobile App"];
  List<String> recentSearches = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0).r,
              child: Column(
                children: [
                  Autocomplete<String>(
                    optionsBuilder: (TextEditingValue textEditingValue) {
                      return popularSearches
                          .where((search) =>
                          search.contains(textEditingValue.text))
                          .toList();
                    },
                    onSelected: (String value) {
                      // Handle when a suggestion is selected
                      _searchController.text = value;
                      recentSearches.add(value);
                    },
                    fieldViewBuilder: (BuildContext context,
                        TextEditingController textEditingController,
                        FocusNode focusNode, VoidCallback onFieldSubmitted) {
                      return TextField(
                        controller: textEditingController,
                        focusNode: focusNode,
                        onSubmitted: (_) {
                          // Handle the submitted search query
                          recentSearches.add(textEditingController.text);
                        },
                        decoration: InputDecoration(
                            icon: IconButton(icon: Icon(Icons.arrow_back),
                              onPressed: () {
                                Get.back();
                              },),
                            hintText: "Type something...",
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            )
                        ),
                      );
                    },
                  ),


                  Row(
                    children: [
                  IconButton(onPressed: (){showFullScreenDialog(context);}, icon:Icon(FontAwesomeIcons.sliders)),
                      SelectIconJob(),
                      SizedBox(width: 10,),
                      SelectIconJob(),
                      SizedBox(width: 10,),
                    ],
                  ),

                  // Display Recent Searches
                ],
              ),
            ),
            SizedBox(height: 36.h,
              width:MediaQuery.of(context).size.width,
              child:Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Text('ndsndbhm'),
                    ],
                  ),
                ),
                color: Colors.grey,
              )
              ,),
            Padding(
              padding: const EdgeInsets.all(20.0).r,
              child: Column(children: [
                ElevatedButton(onPressed:(){showMiniScreenDialog(context);} , child: Text('jjs'))
              ],),
            )
          ],
        ),
      ),
    );
  }
}







