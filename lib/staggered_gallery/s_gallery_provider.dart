import 'package:flutter/cupertino.dart';

class SGalleryProvider extends ChangeNotifier
{
  List<SModel> itemlist = [
    SModel(name: "Somnath, PrabhasPatan",imgpath: "https://www.holidify.com/images/bgImages/SOMNATH.jpg"),
    SModel(name: "Nageswar, Gujarat",imgpath: "https://www.holidify.com/images/cmsuploads/compressed/3409894210_fb92173e03_k_20191001141647.jpg"),
    SModel(name: "Bhalka Tirth, India",imgpath: "https://www.holidify.com/images/cmsuploads/compressed/BhalkaTirth_20191001131850.jpg"),
    SModel(name: "Somnath, PrabhasPatan",imgpath: "https://www.holidify.com/images/bgImages/SOMNATH.jpg"),
    SModel(name: "Nageswar, Gujarat",imgpath: "https://www.holidify.com/images/cmsuploads/compressed/3409894210_fb92173e03_k_20191001141647.jpg"),
    SModel(name: "Bhalka Tirth, India",imgpath: "https://www.holidify.com/images/cmsuploads/compressed/BhalkaTirth_20191001131850.jpg"),
  ];

}







class SModel
{
  String? name,imgpath;

  SModel({this.name, this.imgpath});
}