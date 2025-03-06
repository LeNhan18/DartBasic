import 'dart:io';
import 'dart:convert';
void main (){
  // print('Họ Và tên bạn là gì?');
  // var fullName = stdin.readLineSync(encoding: utf8)!;
  // print('Bạn bao nhiêu tuổi ?');
  // int age = int.parse(stdin.readLineSync()!);
  // print('Xin Chào '"$fullName");
  // print('Năm Nay bạn $age tuổi');
  print('Họ và tên bạn là gì?');
  var a = stdin.readLineSync(encoding: utf8);
  print('Bạn bao nhiêu tuổi ');
   int age = int.parse(stdin.readByteSync() as String);
  print('Xin Chào '"$a");
  print('Năm Nay bạn $age tuổi');

}