import 'dart:io';

void main() {
  stdout.write('Enter your marks (0 to 100): ');

  // Validate input to ensure it's a valid integer between 0 and 100
  try {
    int marks = int.parse(stdin.readLineSync()!);

    if (marks < 0 || marks > 100) {
      print('Invalid marks. Please enter a number between 0 and 100.');
    } else {
      print('Your Grade: ${calculateGrade(marks)}');
    }
  } catch (e) {
    print('Invalid input. Please enter a valid integer.');
  }
}

String calculateGrade(int marks) {
  if (marks >= 90) {
    return 'A+++';
  } else if (marks >= 80) {
    return 'A+';
  } else if (marks >= 70) {
    return 'A';
  } else if (marks >= 60) {
    return 'B';
  } else if (marks >= 50) {
    return 'C';
  } else if (marks >= 40) {
    return 'D';
  } else {
    return 'F';
  }
}
