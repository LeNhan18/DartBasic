import 'dart:io';

void main() {
  // Yêu cầu người dùng nhập tên
  print('Nhập tên của bạn:');
  String? name = stdin.readLineSync();

  // In tên ra màn hình
  print('Chào, $name!');
}
