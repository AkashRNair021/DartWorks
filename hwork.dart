import 'dart:io';

void main() {
  print("Enter a sentence");
  String text = stdin.readLineSync()!;
  List<String> words = text.split(" ");

  final filteredWords = words.where((word) {
    Set<String> charSet = {};
    for (String char in word.split("")) {
      if (charSet.contains(char)) {
        return false;
      }
      charSet.add(char);
    }
    return true;
  }).toList();

  print("Filtered words: ${filteredWords.join(" ")}");
}