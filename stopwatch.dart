import 'dart:io';
DateTime? start;
void main(){
  print("Press enter to start");
  stdin.readLineSync();
  start = DateTime.now();
  stopWatch();

}

void stopWatch() async {
  final time = DateTime.now()!.difference(start!);
  print(time);
  await Future.delayed(Duration(seconds:1));
  stopWatch();
}