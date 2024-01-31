import '../tadadetail/Data.dart';

class TadaDetailResponse {
    Data data;
    String message;
    bool status;
    int statusCode;

    TadaDetailResponse({required this.data,required this.message,required this.status,required this.statusCode});

    factory TadaDetailResponse.fromJson(Map<String, dynamic> json) {
        return TadaDetailResponse(
            data: Data.fromJson(json['data']),
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
            data['data'] = this.data.toJson();
        }
        return data;
    }
}