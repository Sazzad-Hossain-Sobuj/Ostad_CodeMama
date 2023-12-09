import 'dart:io';

void main() {
  try {
    int n = int.parse(stdin.readLineSync() ?? "0");
    List<int> numbers = stdin.readLineSync()?.split(' ').map(int.parse).toList() ?? [];

    if (numbers.length != n) {
      throw FormatException("Invalid input: Expected $n integers, but found ${numbers.length}");
    }

    Map<int, int> frequencyMap = {};
    for (int num in numbers) {
      frequencyMap[num] = (frequencyMap[num] ?? 0) + 1;
    }

    List<MapEntry<int, int>> sortedEntries = frequencyMap.entries.toList()
      ..sort((a, b) {
        int frequencyComparison = a.value.compareTo(b.value);
        if (frequencyComparison == 0) {
          return numbers.indexOf(a.key).compareTo(numbers.indexOf(b.key));
        }
        return frequencyComparison;
      });

    print(sortedEntries.length);
    for (MapEntry<int, int> entry in sortedEntries) {
      print('${entry.key} ${entry.value}');
    }
  } catch (e) {
    print("Error: $e");
  }
}
