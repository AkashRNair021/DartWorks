import 'dart:convert';

void main(){
    Map<String, dynamic> data = {
        "name": "John",
        "age": 30,
        "place":"kollam"
    };
    String data2 = """{
        "name": "John",
        "age": 30,
        "place":"kollam"
    
    
    }""";
    print(jsonDecode(data2));
    String  jsonData = jsonEncode([data]);
    print(data);
    print(jsonDecode(jsonData));
         
    }
