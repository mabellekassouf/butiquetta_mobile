import 'package:butiquetta_mobile/helper/screen_navigation.dart';
import 'package:butiquetta_mobile/view/Search/Search_results.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SearchHistoryScreen extends StatefulWidget {
  const SearchHistoryScreen({Key? key}) : super(key: key);

  @override
  _SearchHistoryScreenState createState() => _SearchHistoryScreenState();
}

class Country {
  const Country({
    required this.name,
  });
  final String name;
  @override
  String toString() {
    return '$name';
  }
}

class _SearchHistoryScreenState extends State<SearchHistoryScreen> {
  List<Country> countryOptions = <Country>[
    Country(name: 'Africa'),
    Country(name: 'Asia'),
    Country(name: 'Australia'),
    Country(name: 'Bulgaria'),
    Country(name: 'Canada'),
    Country(name: 'Denmark'),
    Country(name: 'Europe'),
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF5F6F7),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title:  Text(
          "Search",
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'Valencia',
              color: Colors.black
          ),),
        backgroundColor: Color(0xffF5F6F7),
        leading: IconButton(
          icon: Image.asset('assets/icons/icon_back.png',
            height: 20,
            width: 20,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.05),
                child: Autocomplete<Country>(
                  optionsBuilder: (TextEditingValue textEditingValue) {
                    return countryOptions
                        .where((Country county) => county.name.toLowerCase()
                        .startsWith(textEditingValue.text.toLowerCase())
                    )
                        .toList();
                  },
                  displayStringForOption: (Country option) => option.name,
                  fieldViewBuilder: (
                      BuildContext context,
                      TextEditingController fieldTextEditingController,
                      FocusNode fieldFocusNode,
                      VoidCallback onFieldSubmitted
                      ) {
                    return TextField(
                      controller: fieldTextEditingController,
                      focusNode: fieldFocusNode,
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Geomanist',
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.normal
                        ),
                        suffixIcon: new IconButton(
                            iconSize: 20,
                            onPressed: (){},
                            icon: SvgPicture.asset('assets/icons/icon_search.svg',
                              color: Colors.black,)
                        ),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(25)
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                      ),
                      style: const TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Geomanist'),
                    );
                  },
                  onSelected: (Country selection) {
                    print('Selected: ${selection.name}');
                  },
                  optionsViewBuilder: (
                      BuildContext context,
                      AutocompleteOnSelected<Country> onSelected,
                      Iterable<Country> options
                      ) {
                    return Align(
                      alignment: Alignment.topLeft,
                      child: Material(
                        color: Colors.transparent,
                        child: Container(
                          width: width*0.9,
                          height: height*0.4,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: ListView.builder(
                            padding: EdgeInsets.all(width*0.05),
                            itemCount: options.length,
                            itemBuilder: (BuildContext context, int index) {
                              final Country option = options.elementAt(index);
                              return GestureDetector(
                                onTap: () {
                                  changeScreen(context, SearchResultsScreen());
                                },
                                child: ListTile(
                                  title: Text(option.name, style: const TextStyle(color: Colors.black,fontFamily: 'Geomanist',)),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              Container(height: height*0.03,),
              Container(
                color: Colors.white,
                width: width,
                padding: EdgeInsets.only(top: height*0.02,left: width*0.05,right: width*0.05),
                child: Row(
                  children: [
                    Text("RECENT SEARCHES:",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Geomanist'
                      ),),
                    Spacer(),
                    Container(
                      height: height*0.04,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shadowColor: Colors.transparent,
                            primary: Color(0xffF5F6F7),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color(0xff557374),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            )
                        ),
                        onPressed: (){},
                        child: Text("CLEAR ALL",style: TextStyle(fontSize: 12,fontFamily: 'Geomanist',color: Color(0xff557374)),),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: height*0.5,
                child: ListView.builder(
                    physics: AlwaysScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int i) {
                      return ListTile(
                        onTap: (){
                        },
                        tileColor: Colors.white,
                        title: Text("Handbag green",
                          style: TextStyle(
                            fontFamily: 'Geomanist',
                            fontSize: 12,
                          ),),
                        trailing: IconButton(
                          onPressed: (){

                          },
                          icon: Icon(Icons.close),
                        ),
                      );
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
