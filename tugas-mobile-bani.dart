import 'dart:io';

void main() {
  print('Masukkan password:');
  String password = stdin.readLineSync()!;

  if (password.length < 6) {
    print('Password harus memiliki minimal 6 karakter');
  } else if (!hasCapitalLetter(password) || !hasSpecialCharacter(password)) {
    print('Password tidak memenuhi syarat:');
    print('Minimal 1 huruf kapital');
    print('Minimal satu karakter khusus');
  } else {
    print('Password memenuhi semua syarat');
  }
}

bool hasCapitalLetter(String password) {
  RegExp capitalLetterRegex = RegExp(r'[A-Z]');
  return capitalLetterRegex.hasMatch(password);
}

bool hasSpecialCharacter(String password) {
  RegExp specialCharacterRegex = RegExp(r'[!@#\$&\*.]');
  return specialCharacterRegex.hasMatch(password);
}
