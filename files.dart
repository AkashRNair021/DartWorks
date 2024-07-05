import 'dart:io';

void main() {
    final file =File("./textfile.txt");

    file.writeAsString("duplicate indian ");

    final content = file.readAsString();
    
    content.then((e) {
        print(e);
    });
    print("after reading");
}