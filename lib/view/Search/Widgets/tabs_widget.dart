import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilterTab extends StatefulWidget {
  final List<Map<String, dynamic>> data;

  FilterTab({required this.data});

  @override
  _FilterTabState createState() => _FilterTabState();
}

class _FilterTabState extends State<FilterTab> {
  List<String> _selected = [];

  @override
  void initState() {
    super.initState();
  }

  List<Widget> buildTabs(double width, double height) {
    List<Widget> tabs = [];
    methode(_selectedd, int i) {
      if (_selectedd.contains(widget.data[i]["tag_id"])) {
        _selectedd.remove(widget.data[i]["tag_id"]);
      } else {
        _selectedd.insert(0, widget.data[i]["tag_id"]);
      }
      setState(() {
        _selected = _selectedd;
      });
      print(_selectedd);
    }

    for (int i = 0; i < widget.data.length; i++) {
      tabs.add(
        GestureDetector(
          onTap: () {
            _filtringSearchResult.filtringisopen = true;

            switch (widget.type) {
              case "categorie":
                {
                  methode(_filtringSearchResult.selectedandtypecategory, i);
                }
                break;

              case "subcategorie":
                {
                  methode(_filtringSearchResult.selectedandtypesubcategory, i);
                }
                break;
              case "color":
                {
                  methode(_filtringSearchResult.selectedandtypecolor, i);
                }
                break;
              case "size":
                {
                  methode(_filtringSearchResult.selectedandtypesize, i);
                }
                break;
              case "material":
                {
                  methode(_filtringSearchResult.selectedandtypematerial, i);
                }
                break;
              default:
                return;
            }

            // if(_selected.contains(widget.data[i]["tag_name"]))
            // {
            //   setState(() {
            //     _selected.remove(widget.data[i]["tag_name"]);
            //   });
            // }
            // else
            //   {
            //     setState(() {
            //       _selected.insert(0, widget.data[i]["tag_name"]);
            //     });
            //   }
            // print(_selected);
// if(_selectedandtype.length>1) {
//   _selectedandtype.remove(_selectedandtype[0]);
//   _selectedandtype.add({
//     "type": widget.type,
//     "list": _selected
//   });
// }else if(_selectedandtype.length==0){
//   _selectedandtype.add({
//     "type": widget.type,
//     "list": _selected
//   });
// }
//
// if()
//             print(_selectedandtype);
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xff557374),
              ),
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: (_selected.contains(widget.data[i]["tag_id"]))
                  ? Color(0xff557374)
                  : Colors.white,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.data[i]["tag_name"],
                    style: TextStyle(
                      color: (_selected.contains(widget.data[i]["tag_id"]))
                          ? Colors.white
                          : Color(0xff557374),
                      fontFamily: 'Geomanist',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
    tabs.add(SizedBox(width: 10));
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.start,
        spacing: 5,
        runSpacing: 5,
        children: [...buildTabs(width, height)],
      ),
    );
  }
}
