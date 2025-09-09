class SeatModel {
  Record? record;
  Metadata? metadata;

  SeatModel({this.record, this.metadata});

  SeatModel.fromJson(Map<String, dynamic> json) {
    record = json['record'] != null ? Record.fromJson(json['record']) : null;
    metadata = json['metadata'] != null
        ? Metadata.fromJson(json['metadata'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (record != null) {
      data['record'] = record!.toJson();
    }
    if (metadata != null) {
      data['metadata'] = metadata!.toJson();
    }
    return data;
  }
}

class Record {
  List<List<Data>>? data;

  Record({this.data});

  Record.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = [];
      final rawData = json['data'];

      // Iterate over rows
      for (var row in rawData) {
        List<Data> rowData = [];

        if (row is List) {
          // Array row → use items directly
          rowData.addAll(row.map((e) => Data.fromJson(e)).toList());
        } else if (row is Map) {
          // Map row → fill missing indices with space
          int maxCols = 5;
          for (int i = 0; i < maxCols; i++) {
            if (row.containsKey(i.toString())) {
              rowData.add(Data.fromJson(row[i.toString()]));
            } else {
              rowData.add(Data(type: "space"));
            }
          }
        }

        data!.add(rowData);
      }
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (data != null) {
      json['data'] = data!
          .map((row) => row.map((e) => e.toJson()).toList())
          .toList();
    }
    return json;
  }
}

class Data {
  String? type;
  String? name;

  Data({this.type, this.name});

  Data.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    json['type'] = type;
    json['name'] = name;
    return json;
  }
}

class Metadata {
  String? id;
  bool? private;
  String? createdAt;

  Metadata({this.id, this.private, this.createdAt});

  Metadata.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    private = json['private'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    json['id'] = id;
    json['private'] = private;
    json['createdAt'] = createdAt;
    return json;
  }
}
