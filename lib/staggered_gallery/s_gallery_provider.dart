import 'package:flutter/cupertino.dart';

class SGalleryProvider extends ChangeNotifier
{
  List<SModel> itemlist = [
    SModel(name: "Somnath, PrabhasPatan",imgpath: "https://www.holidify.com/images/bgImages/SOMNATH.jpg"),
    SModel(name: "Statue of Unity",imgpath: "https://paramountclientweb.s3.ap-south-1.amazonaws.com/indian-holiday-trip/visualstories/Img_1267_202233111218_statue_of_unity.jpg?time=1647022116"),
    SModel(name: "AksharDham",imgpath: "https://www.nativeplanet.com/img/2017/01/06-1483705246-gandhinagar.jpg"),
    SModel(name: "Girnar",imgpath: "https://upload.wikimedia.org/wikipedia/commons/e/e1/Girnar_1.jpg"),
    SModel(name: "Nageswar, Gujarat",imgpath: "https://www.holidify.com/images/cmsuploads/compressed/3409894210_fb92173e03_k_20191001141647.jpg"),
    SModel(name: "Bhalka Tirth, India",imgpath: "https://www.holidify.com/images/cmsuploads/compressed/BhalkaTirth_20191001131850.jpg"),
    SModel(name: "Kakariya Talav",imgpath: "https://gumlet.assettype.com/knocksense%2F2023-01%2Fd2b1437e-1172-4f99-845c-200a36220306%2FE3hzqNOVIAE5Yyj.jpg?auto=format%2Ccompress&format=webp&w=400&dpr=2.6"),
    SModel(name: "Ranotsav",imgpath: "https://im.idiva.com/content/2021/Dec/shutterstock_1975446140_61c08e5b8caf3.jpg"),
    SModel(name: "KiteFestival, Kutch",imgpath: "https://images.herzindagi.info/image/2019/Jan/jaipur-kite-festival-2019-3.jpg"),
    SModel(name: "Saputara",imgpath: "https://img.traveltriangle.com/attachments/pictures/1106744/original/Amazing_Green_Scenery_in_Saputara.jpg"),
  ];

}







class SModel
{
  String? name,imgpath;

  SModel({this.name, this.imgpath});
}