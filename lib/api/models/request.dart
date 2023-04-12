class Request {
  String type = "";
  List<String> details = [];
  String request_date_time = "";
  String fulfilled_date_time = "";
  int customer_id = 0;
  Request();

  Request.fromJSON(Map<String, dynamic> json) {
    try {
      print('json -> $json');

      if (json['details'] != null && json['details'].length > 0) {
        details = json['details'];
      }
      ;
      type = json['type'];
      request_date_time = json['requestDateTime'];
      fulfilled_date_time = json['fulfilledDateTime'];
      customer_id = json['customerID'];
    } catch (e) {
      throw const FormatException('Request JSON invalid.');
    }
  }

  Map<String, dynamic> toJSON() => {
        'type': type,
        'details': details,
        'requestDateTime': request_date_time,
        'fulfilledDateTime': fulfilled_date_time,
        'customerID': customer_id
      };
}
