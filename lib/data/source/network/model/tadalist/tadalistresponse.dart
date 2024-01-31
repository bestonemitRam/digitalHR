import '../tadalist/Data.dart';

class TadaListResponse {
  List<Data> data;
  String message;
  bool status;
  int statusCode;

  TadaListResponse(
      {required this.data,
      required this.message,
      required this.status,
      required this.statusCode});

  factory TadaListResponse.fromJson(Map<String, dynamic> json) {
    return TadaListResponse(
      data: (json['data'] as List).map((i) => Data.fromJson(i)).toList(),
      message: json['message'],
      status: json['status'],
      statusCode: json['statusCode'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['status'] = this.status;
    data['statusCode'] = this.statusCode;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    //  data['data1'] =  this.data.map(v) => v.toJson()).toList();
    }
    return data;
  }
}
