class ResponseEmployee {
  int? message;
  List<Data>? data;
  int? count;

  ResponseEmployee({this.message, this.data, this.count});

  ResponseEmployee.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['count'] = this.count;
    return data;
  }
}

class Data {
  String? name;
  String? nik;
  String? position;
  String? id;

  Data({this.name, this.nik, this.position, this.id});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    nik = json['nik'];
    position = json['position'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['nik'] = this.nik;
    data['position'] = this.position;
    data['id'] = this.id;
    return data;
  }
}