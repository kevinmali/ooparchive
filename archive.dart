import 'dart:io';
import 'oop.dart';

void main() {

  print("=============================");
  print("====== Kevin - SHOPE ========");
  print("=============================");

  stdout.write("Enter The Customer id : ");
  int num = int.parse(stdin.readLineSync()!);

  List<customer> allcustomers = List.generate(num,(index) 
  {
    stdout.write("Enter ID : ");
    int id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Name : ");
    String name = stdin.readLineSync()!;
    stdout.write("Enter Contact number : ");
    int contact = int.parse(stdin.readLineSync()!);

   return customer(id: id, name: name, contact: contact);
  }
  );
  stdout.write("Enter search id number : ");
  int sarchid = int.parse(stdin.readLineSync()!);

  allcustomers.forEach((data) {
    do {
      if (sarchid == data.id) {
        print("${data.id}\t${data.name}\t${data.bill}\t\n");
      } else {
        print("check id...");
      }
    } while (sarchid != data.id);
  });
}