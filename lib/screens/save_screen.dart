import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:thflutter/components/custom_appbar.dart';
class SavedScreen extends StatelessWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    // final w = MediaQuery.of(context).size.width;
    var myBox=Hive.box('saved');
    return  Scaffold(
      appBar:const CustomAppBar(title: 'Saved', back: false),
      body: Padding(padding:const EdgeInsets.only(top: 18, right: 8, left: 8),
        child: ValueListenableBuilder(
          valueListenable: myBox.listenable(),
          builder: (context,box,_){
            return ListView.builder(
                itemCount: box.length,
                itemBuilder: (context,index){
                  var data=box.values.toList();
                  return ListTile(
                    title: Container(
                      height: h*.085,
                      color: Colors.grey[100],
                      child: Row(
                        children: [

                          Expanded(
                              flex: 3,
                              child: Text(data[index])),
                          PopupMenuButton(itemBuilder: (context){
                            return const[
                              PopupMenuItem(child: Text('share'),value: 'share',),
                              PopupMenuItem(child: Text('delete'),value: 'delete',),

                            ];
                          })
                        ],
                      ),
                    ),
                  );
                }
            );
          },

        ),
      ),
    );
  }
}


