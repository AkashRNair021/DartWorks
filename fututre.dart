
void main() {
    getData("teachers")
     .then((a){
        return getData("classes");
     })
     .then((b){
        return getData("count");
     })
     .then((c){
        print(c);
     });
 print("After printing");
}


Future<String> getData(String query){
    Map<String,dynamic> data={
        "teachers":"List of teachers",
        "classes":"List of classes",
        "count":"Student count"
    };

    return Future(() {
        return data[query];
    });
}