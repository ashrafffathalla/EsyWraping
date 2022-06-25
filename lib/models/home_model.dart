class HomeModel {
  Data? data;
  HomeModel({this.data});
  HomeModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ?  Data.fromJson(json['data']) : null;
  }

}

class Data {
  Slider? slider;
  Data.fromJson(Map<String, dynamic> json) {
    slider =
    json['slider'] != null ?  Slider.fromJson(json['slider']) : null;
  }

}
class Slider {
  List<DataTwo>? data;

  Slider({this.data});

  Slider.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <DataTwo>[];
      json['data'].forEach((v) {
        data!.add( DataTwo.fromJson(v));
      });
    }
  }

}

class DataTwo {
  String? uuid;
  String? fullUrl;

  DataTwo.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    fullUrl = json['full_url'];

  }

}