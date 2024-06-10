import 'package:dio/dio.dart';

class API {
  getStaticPage() {
    return {
      "orders": {
        "photo1": "assets/images/lamp5.png",
        "title1": "Parabolic Reflector",
        "description1": "Brown",
        "fiyat1": "\$240",
        "sepet1": "Track Order",
        "photo2": "assets/images/monitor3.png",
        "title2": "monitor",
        "description2": "White",
        "fiyat2": "\$180",
        "sepet2": "Track Order",
        "photo3": "assets/images/table4.png",
        "title3": "Mini Wooden Table",
        "description3": "Brown",
        "fiyat3": "\$320",
        "sepet3": "Track Order"
      }
    };
  }

  download(String path, String savePath) async {
    try {
      Dio dio = Dio();

      await dio.download(path, savePath);
      return true;
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }
}