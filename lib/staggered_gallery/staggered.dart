import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:media_booster/staggered_gallery/s_gallery_provider.dart';
import 'package:provider/provider.dart';

class Staggered_Gallery extends StatefulWidget {
  const Staggered_Gallery({Key? key}) : super(key: key);

  @override
  State<Staggered_Gallery> createState() => _Staggered_GalleryState();
}

class _Staggered_GalleryState extends State<Staggered_Gallery> {
  SGalleryProvider? sgpT;
  SGalleryProvider? sgpF;

  @override
  Widget build(BuildContext context) {
    sgpT = Provider.of<SGalleryProvider>(context);
    sgpF = Provider.of<SGalleryProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal.shade900,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "Gujarat Tourism",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: MasonryGridView.builder(
          itemCount: sgpF!.itemlist.length,
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(2),
              child: Container(

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network("${sgpT!.itemlist[index].imgpath}"),
                    ),
                    Text(
                      "${sgpT!.itemlist[index].name}",
                      style: TextStyle(color: Colors.amber.shade900),
                    ),
                    SizedBox(height: 5,)
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
