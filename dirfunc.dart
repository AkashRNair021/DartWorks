import 'dart:io';

void main(){
    final dir = new Directory("./evstats");
    print(dir.renameSync("./evnstats"));

}